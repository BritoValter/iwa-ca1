const   express = require('express'), //Allows to respond to HTTP requests, defines routing and renders the required content
        fs = require('fs'), //Working with the file system (read and write files)
        http = require('http'), //HTTP Server
        path = require('path'), //Utility that allows us to work with directory paths
        xml2js = require('xml2js'), //This is XML <-> JSON converter
        xmlParse = require('xslt-processor').xmlParse, //Parsing XML
        xsltProcess = require('xslt-processor').xsltProcess; //Processing XSLT
const   router = express(), //Instantiating Express
        server = http.createServer(router); //Instantiating the server
router.use(express.static(path.resolve(__dirname,'views'))); //Serving static content from "views" folder
router.use(express.json());