docker run -d -p 7777:7474 -p 7778:7687 -v ~/backup:/backup --name n4j_lands nanangqq/n4j-ss:191227
docker exec -u neo4j n4j_lands neo4j-admin load --from=/backup/lands_0112.db
docker exec -d -u neo4j n4j_lands neo4j console
