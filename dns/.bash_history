set -o vi
dig @rabbit foo.corp SOA
dig @rabbit foo.corp
scp db.foo.corp rabbit:/etc/bind/
rndc -s rabbit addzone 'foo.corp' '{ type master; file "/etc/bind/db.foo.corp"; };'
dig @rabbit foo.corp SOA
dig @rabbit foo.corp
