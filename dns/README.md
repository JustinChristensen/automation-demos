# Adding new DNS zones on the fly

## Pre-requisites 

* [Docker](https://www.docker.com/): Enable v2 compose

## Running 

```bash
make run-server
make run-controller
```

## Demo

```bash
# From the controller

# query the name server for information about "foo.corp"
dig @rabbit foo.corp SOA
dig @rabbit foo.corp

# publish the new zone file 
scp db.foo.corp rabbit:/etc/bind/
rndc -s rabbit addzone 'foo.corp' '{ type master; file "/etc/bind/db.foo.corp"; };'

# check again
dig @rabbit foo.corp SOA
dig @rabbit foo.corp
```

