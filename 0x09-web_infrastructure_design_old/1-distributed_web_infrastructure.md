~~~~
- Why every other component was added:

1. #2 Servers:
The two servers where added to provide for redundancy. This improves the
earlier design so that the work load one server is reduced as was the case with
the earlier design. The also eliminates the single point of failure problem
that was encountered in the simple design. With additional servers, maintenance
can be done of one component without causing a failure of the entire system.
This then means that the User will not notice and changes to responses served
when maintenance of back end components are performed.


2. #1 webserver, application server, code base and database:
All of these components were added to provide for redundancy as well. With
these new additions, the infrastructure is made more robust so that more user
requests can be handled.

3. Load Balancer:
This compoenent is added to ensure overloading of the server is prevented based
on some balancing algorithm by equally distributing client requests.

- Load balancing algorithm uses a hash balancing algorithm to evenly distribute
requests. This works by creating a very good hash function and passing the ip
address of the request returned from the DNS into the function and based on
that routing the request to the appropriate server for handling the response.

- The load balancer enables an Active-Active setup in which case the requests
are evenly distributed to each serve since they are both active. An
Active-Passive server is on the other hand one that keeps one server as the
primary handler of requests and the other redundant.

- A master-slave database cluster works by having one database called the
Master handle write operations while the slave database handles the read
operations. This allows for equal sharing of the work load on both databases.
When the Matser database is written to, the slave updates itself to the content
of the master so that the records in both databases are accurate.

- The single point of failure in the setup exist with the load balancer. If it
is equally overloaded, it can begin to route requests to one server and over
load the server thus leading to a crash. There might also be a malfunction with
the hash function algorithm when requests begin to scale up.

- No firewall, https means reduced security. Sensitive client data may be
stolen or modified.

- No monitoring means that decisions around how to improve the architechture
becomes blind and hard. Like the saying goes, you cannot improve what you do
not monitor.
~~~~
