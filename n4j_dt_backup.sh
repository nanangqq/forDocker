if [ "$#" -lt 1 ]; then
    echo "Usage: $0 [backup file path]"
    exit 1
else
    docker exec mv /docker-entrypoint.sh /docker-entrypoint-ip.sh
    docker exec mv /docker-entrypoint-org.sh /docker-entrypoint.sh

    echo "loading backup file: $1"
    docker exec -u neo4j n4j_dt neo4j-admin load --from=$1
    docker exec -d -u neo4j n4j_dt neo4j console
fi