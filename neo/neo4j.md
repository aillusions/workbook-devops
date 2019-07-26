


wget https://archive.org/download/stackexchange/stackoverflow.com-Posts.7z

for i in *.7z; do 7za -y -oextracted x $i; done

git clone https://github.com/mdamien/stackoverflow-neo4j

pip3 install xmltodict

cd /home/alex/doc/stackoverflow-neo4j
python3 to_csv.py ../extracted



cp  /media/doc/stackoverflow-neo4j/csvs/* /home/alex/workbook-devops/neo/neo4j/import


docker exec -it workbook-neo4j-srv 

/var/lib/neo4j/bin/neo4j-import \
    --into /data/databases/graph.db \
    --id-type string \
    --nodes:Post /var/lib/neo4j/import/posts.csv \
    --nodes:User /var/lib/neo4j/import/users.csv \
    --nodes:Tag /var/lib/neo4j/import/tags.csv \
    --relationships:PARENT_OF /var/lib/neo4j/import/posts_rel.csv \
    --relationships:ANSWER /var/lib/neo4j/import/posts_answers.csv \
    --relationships:HAS_TAG /var/lib/neo4j/import/tags_posts_rel.csv \
    --relationships:POSTED /var/lib/neo4j/import/users_posts_rel.csv
    
    
    
/var/lib/neo4j/bin/neo4j-admin import --database stackoverflow --nodes /var/lib/neo4j/import/posts.csv



/var/lib/neo4j/bin/neo4j-import --into /data/databases/graph.db --id-type string --nodes:Post /var/lib/neo4j/import/posts.csv
/var/lib/neo4j/bin/neo4j-import --into /data/databases/graph.db --id-type string --nodes:Post /var/lib/neo4j/import/users.csv 
/var/lib/neo4j/bin/neo4j-import --into /data/databases/graph.db --id-type string --nodes:Post /var/lib/neo4j/import/tags.csv

LOAD CSV FROM 'https://home.zalizniak.com/neo4j-data.csv'