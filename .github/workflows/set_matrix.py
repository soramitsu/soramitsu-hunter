import os
import sys
import json
import re

try:
  with open(os.environ.get('HOME') + '/files.json') as json_files:
    files = json.load(json_files)
except IOError:
  sys.exit('Can\'t read changed files from files.json')

projects = set()

p = re.compile('cmake/projects/([^/]+)')
for file in files:
  if p.match(file):
    project = p.match(file).group(1)
    if os.path.isdir('cmake/projects/' + project):
      projects.add(project)

if projects:
  dafault_dir = '.github/workflows/ci/'

  with open(dafault_dir + 'matrix.json') as json_matrix:
    default_matrix = json.load(json_matrix)

  include = []
  for project in projects:
    project_dir = 'cmake/projects/' + project + '/ci/';

    matrix_override = project_dir + 'matrix.json';
    if os.path.isfile(matrix_override):
      with open(matrix_override) as json_matrix_override:
        project_matrix = json.load(json_matrix_override)
    else:
      project_matrix = [ dict(leg, example = project) for leg in default_matrix ]

    for leg in project_matrix:
      if (os.path.isfile(project_dir + leg['script'])):
        leg['script'] = project_dir + leg['script']
      else:
        leg['script'] = dafault_dir + leg['script']

    include += project_matrix

  print(json.dumps({'include': include}))
else:
  sys.exit('No projects found')