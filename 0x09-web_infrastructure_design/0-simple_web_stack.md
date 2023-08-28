~~~~
- What is a server?
A server is a physical or virtual computer that hosts the entire web infrastructure.

- What is the role of the domain name?
The domain name provides a human readable name that can be mapped to an IP address of the server. It is the domain name that the user uses to make a request to the web server instead of an ip address. This is because humans are not wired to remember numbers (IP addresses) but are generally comfortable with remembering names.

- What type of DNS record www is in www.foobar.com ?
The DNS record for “www” in www.foobar.com is CNAME record where CNAME stands for Canonical Name. This record points to the domain itself which means that the url: “www.foobar.com” is an alias for the domain “foobar.com”. Hence when the user types in “foobar.com” on his web browser when making a request to the web browser, the browser essentially understands it to mean “www.foobar.com” implicitly. 

- What is the role of the web server?
The web server stores and serves web content to clients when they request it. These types of requests are HTTP requests from the user/user agent (web browser). So, when the user requests for “www.foobar.com”, the web server delivers the appropriate response to the user’s web browser which is to serve the user with the web page of “www.foobar.com”. In our simple design, the web server used is Nginx and it is an open-source web server software that provides HTTPS server capabilities.

- What is the role of the application server?
The limitation of the web server is its ability to only serve HTTP requests. Such requests include processing dynamic content and executing code before generating a response to the user’s request. This kind of content is otherwise called the “business logic”.

For example, if a user makes a request to the webserver for content relating to a transaction on a website say paying for a service or product, the web server is not able to handle the request because of its dynamic nature. It will need to pass on the request to the application server which does the heavy lifting of executing code, querying a database to validate everything about the transaction.

The same happens when a user makes a request to an e-commerce website in which case the user is trying to search for a product that matches certain criteria. This of course is a dynamic content that requires real time data abstraction from say a database. The application server is responsible for querying the database for relevant data that matches the user’s request, as well as serving the user with a response of the web page that accurately represents the user’s request via the web server whose sole purpose is to serve the user with HTTP responses. 

- What is the role of the database?
The database stores and manages the website’s data and provides a means to perform data operations like accessing, updating, and deleting such data. In this design, the database system used is the MySQL which uses the programming language SQL (Structured Query Language) for these operations.


- What is the server using to communicate with the computer of the user requesting the website?
HTTP (Hyper Text Transfer Protocol)

Explainanation of what the issues are with this infrastructure:

1.	SPOF (Single Point of Failure): Since our design is a simple web design comprising of a single server and router, any failure of one of these core components in the design will result in the failure of the entire infrastructure resulting in the Client/User unable to get responses for requests (being able to access a website).

2.	Downtime when maintenance needed (like deploying new code web server needs to be restarted)

When maintenance is needed like deploying new code, the Nginx web server needs to be restarted and during restart, the website would be temporarily unavailable to users.

3.	Cannot scale if too much incoming traffic:

With the design, if there is a sudden influx of traffic from one or more users, a single server might not be able to meet up with the load requirements which can lead reduced response time and even a crash resulting in downtime.
~~~~
