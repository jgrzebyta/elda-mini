# About project

Minimalistic project for issue https://github.com/epimorphics/elda/issues/209


To start:

```./gradlew start```

To stop:

```./gradlew stop```


### Requirements
  - docker
  - docker-compose


### Other URLs

 - rdf4j repositories manager
   [http://localhost:8090/rdf4j-workbench/](http://localhost:8090/rdf4j-workbench/)
 
 - rdf4j server
   [http://localhost:8090/rdf4j-server/](http://localhost:8090/rdf4j-server/)

    Currently server contains created `eldatest` repository. The repository (native store) contains graph taken from
    `epimorphics/elda/master/elda-standalone/src/main/webapp/data/example-data.ttl`. All data are stored in `data_store` 
    directory.