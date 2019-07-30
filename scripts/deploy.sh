# !/bin/bash
echo "Running deploy..."
# Get servers list:
set - f
string=$DEPLOY_SERVER
array=(${string//,/ })

for i in "${!array[@]}"; do
  echo "Deploy project on server ${array[i]}"
  cat ./scripts/start-app.sh | ssh ubuntu@${array[i]}
done

echo "Server has started..."
exit 0