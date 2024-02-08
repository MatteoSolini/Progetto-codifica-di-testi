
# <h1>Progetto di Codifica di testi 2022/2023 </h1>

<p> Questo repository contiene il progetto della materia: <b>Codifica di testi</b> del professor Angelo Mario Del Grosso, nell'anno accademico 2022-2023 del corso di laurea di <b>Informatica Umanistica</b>. </p>

<i>Matteo Solini</i> (mat: 619738)


### <h2>Comando per la validazione XML tramite Xerces</h2>

```shell
$ java -cp "Xerces-J-bin.2.12.1/xerces-2_12_1/xml-apis.jar;Xerces-J-bin.2.12.1/xerces-2_12_1/xercesImpl.jar;Xerces-J-bin.2.12.1/xerces-2_12_1/xercesSamples.jar" dom.Counter -v diario.xml
```

### <h2>Comando per la generazione del documento HTML di output tramite il processore XSLT Saxon </h2>

```shell
$ java -jar ./SaxonHE10-3J/saxon-he-10.3.jar -s:diario.xml -xsl:progetto.xsl -o:risposta.html
```
Risultato finale:
```
diario.xml: 304;46;0 ms (777 elems, 2582 attrs, 3331 spaces, 12095 chars)
```
