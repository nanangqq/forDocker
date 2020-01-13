
if [ "$#" -lt 1 ]; then
    docker run -d -p 7998:7474 -p 7999:7687 -v ~/n4j_bu:/n4j_bu --name n4j_dt nanangqq/n4j-ss:191227
    echo "loading default backup file: /n4j_bu/ss_1226.db"
    echo "Usage: $0 [backup file path]"
    docker exec -u neo4j n4j_dt neo4j-admin load --from=/n4j_bu/ss_1226.db
    docker exec -d -u neo4j n4j_dt neo4j console    
else
    docker run -d -p 7998:7474 -p 7999:7687 -v ~/n4j_bu:/n4j_bu --name n4j_dt nanangqq/n4j-ss:191227
    echo "loading backup file: $1"
    docker exec -u neo4j n4j_dt neo4j-admin load --from=$1
    docker exec -d -u neo4j n4j_dt neo4j console
fi

