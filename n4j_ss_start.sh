docker run -d -p 7474:7474 -p 7687:7687 -v ~/backup:/backup --name n4j_ss nanangqq/n4j-ss:191227
# echo "loading default backup file: /n4j_bu/ss_1226.db"
# echo "Usage: $0 [backup file path]"
docker exec -u neo4j n4j_ss neo4j-admin load --from=/backup/ss_1226.db
docker exec -d -u neo4j n4j_ss neo4j console
