Use this repo to create a Fuseki image with the UI and admin functions enabled.

First clone the repo then download and unzip Jena Fuseki from [here](https://jena.apache.org/download/) into this directory.

Edit the Dockerfile and update the COPY line to point to your downloaded Jena Fuseki.

Build the image with:
```shell
docker build  --tag twalmsley/aosd-fuseki .
```

and run it using:

```shell
docker-compose up -d
```

It will create `databases` and `configuration` directories for persistent storage of data.

Go to [http://localhost:3030/index.html](http://localhost:3030/index.html) in your browser. 

The default username is `admin` and the password is `pw`.

(Don't use this for production obviously.)
