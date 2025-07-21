pr_number=$1
echo $(gh pr checks $pr_number --repo Somanathkl/l2c-test --json link | jq -r '.[].link' | cut -d "=" -f 2)
