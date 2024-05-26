# graph-rag

An example implementation of https://www.microsoft.com/en-us/research/blog/graphrag-unlocking-llm-discovery-on-narrative-private-data/ using Neo4j and Langchain.

This is basically a reification of this recipe:

https://medium.com/microsoftazure/introducing-graphrag-with-langchain-and-neo4j-90446df17c1e

and these LangChain docs:
https://blog.langchain.dev/enhancing-rag-based-applications-accuracy-by-constructing-and-leveraging-knowledge-graphs/
https://python.langchain.com/v0.1/docs/use_cases/graph/constructing/
https://github.com/tomasonjo/blogs/blob/master/llm/enhancing_rag_with_graph.ipynb?ref=blog.langchain.dev

and some Neo4J docs:
https://medium.com/swlh/deployment-of-neo4j-docker-container-with-apoc-and-graph-algorithms-plugins-bf48226928f4


Run "setup.sh". It *might* work if you're on a Mac, but more likely you'll want to run the script a line at a time.

Make sure your neo4j server is running:

```
% neo4j status
Neo4j is running at pid 57897
```

You can run it via docker with this command:

```
docker run \
    -p 7474:7474 -p 7687:7687 \
    -v $PWD/data:/data -v $PWD/plugins:/plugins \
    --name neo4j-apoc \
    -e NEO4J_AUTH=$NEO4J_USERNAME/$NEO4J_PASSWORD \
    -e NEO4J_apoc_export_file_enabled=true \
    -e NEO4J_apoc_import_file_enabled=true \
    -e NEO4J_apoc_import_file_use__neo4j__config=true \
    -e NEO4JLABS_PLUGINS=\[\"apoc\"\] \
    -e NEO4J_dbms_security_procedures_unrestricted=apoc.\\\* \
    neo4j:latest
```

Note that the "apoc" plugin is required.


Navigate to http://localhost:7474/ (usually). It should present you with the neo4j login screen. The default username and password are `neo4j/neo4j` and you should change them to match those set in your `.env` file.
