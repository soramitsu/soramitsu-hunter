#!/bin/bash
GITHUB_PERSONAL_ACCESS_TOKEN=$1
# Like cpp-pm
GITHUB_USER=$2
# Like hunter
GITHUB_REPO=$3
echo "Working on repo $GITHUB_REPO"
#fork to cpp-pm
curl -s -H "Authorization: token ${GITHUB_PERSONAL_ACCESS_TOKEN}" "https://api.github.com/repos/${GITHUB_USER}/${GITHUB_REPO}/forks" -d '{"organization":"cpp-pm"}'
#add cpp-pm-packages team to collaborators
curl -s -H "Authorization: token ${GITHUB_PERSONAL_ACCESS_TOKEN}" "https://api.github.com/orgs/cpp-pm/teams/cpp-pm-packages/repos/cpp-pm/${GITHUB_REPO}" -X PUT -d '{"permission":"push"}'
#add branch protection for master
curl -s -H 'Accept: application/vnd.github.luke-cage-preview+json' -H "Authorization: token ${GITHUB_PERSONAL_ACCESS_TOKEN}" "https://api.github.com/repos/cpp-pm/${GITHUB_REPO}/branches/master/protection" -X PUT -d '{"required_status_checks":null,"enforce_admins":true,"required_pull_request_reviews":{"required_approving_review_count":1},"restrictions":{"teams":[], "users":[]}}'
#add branch protection for hunter branches
curl -s -H "Authorization: token ${GITHUB_PERSONAL_ACCESS_TOKEN}" "https://api.github.com/repos/cpp-pm/${GITHUB_REPO}/branches" | jq .[][\"name\"] | grep hunter | xargs -I {} sh -c 'curl -H "Accept: application/vnd.github.luke-cage-preview+json" -H "Authorization: token ${GITHUB_PERSONAL_ACCESS_TOKEN}" "https://api.github.com/repos/cpp-pm/${GITHUB_REPO}/branches/{}/protection" -X PUT -d "{\"required_status_checks\":null,\"enforce_admins\":true,\"required_pull_request_reviews\":{\"required_approving_review_count\":1},\"restrictions\":{\"teams\":[], \"users\":[]}}"'
