import sys
import json

try:
  with open('job_data.json') as json_data:
    job_data = json.load(json_data)
except IOError:
  sys.exit('Can\'t read job status from job_data.json')

projects = dict()

for job in job_data['jobs'][1:-1]:
  project = job['name'].split(" ")[0]
  projects.setdefault(project, []).append(job)

for project, jobs in projects.items():
  with open('job_data/' + project + '.json', 'w') as file:
    json.dump(sorted(jobs, key = lambda i: i['name']), file, indent=4)