# 0x09. Web infrastructure design

In this project we draw the web infrastructure design of a website that is
reachable via `www.foobar.com`.
The files contain the url to the drawing. The drawings are hosted on [imgur](https://imgur.com/upload).

## Mandatory

### Simple web stack

File: [0-simple_web_stack](./0-simple_web_stack)

![0-simple_web_stack](./images/0-simple_web_stack.png)

- This is a simple web infrastructure design that uses a single physical server
  with a LAMP stack.

- Requirements:

  - 1 server
  - 1 web server (Nginx)
  - 1 application server
  - 1 application files (your code base)
  - 1 database (MySQL)
  - 1 domain name foobar.com configured with a www record that points to the
    server IP 8.8.8.8

- DNS configuration

```DNS
NAME                TYPE     VALUE
--------------------------------------------
www.                CNAME    www.foobar.com.
www.foobar.com.     A        8.8.8.8
```

- Explanation

  - User request
    - User searches for the `www.foobar.com` or `www` in the browser.
  - DNS Resolution
    - The url `www.foobar.com` or `www` will be resolved to the IP address
      `8.8.8.8`, because the DNS on the server is configured with the DNS A
      record for `www.foobar.com` and the DNS CNAME record for `www` as an
      alias to `www.foobar.com`.
  - Web server (Nginx)
    - The browser sends an HTTP request to the IP address `8.8.8.8`.
    - The web server (Nginx) receives the HTTP request as it is configured to
      listen for incoming connections and processes the request.
  - Static content
    - If the request is for a static webpage like (HTML, CSS, and JavaScript)
      the web server will directly serve these files by fetching them from the
      codebase.
  - Dynamic content
    - If the request is for a dynamic content then the web server will delegate
      the task to the application server.
    - The application server will process the server-side scripting based on
      the configured business logic, and in doing so it might fetch or store
      data from/on the database server (MySQL).
    - After the application server finishes the server-side scripting it builds
      the dynamic HTML content by stitching together the base HTML structure
      in the code base and processed data on the application server.
    - After that the application server sends the dynamically generated HTML
      to the web server.
  - Response to the User
    - So after the web server gets the generated HTML content, whether it be
      static or dynamic, it responds back to the user browser with a HTTP
      Response, which contains the HTML webpage.
    - Then the user browser renders or displays the HTML webpage to the user.

- Issues with the infrastructure

  - It has a single point of failure (SPOF). It doesn't provide any
    redundancy at all so if one of the servers crashed or if power goes out
    the whole system is out.
  - The whole system has to go down in order to conduct a maintenance
    operation, or deploy a new code.
  - In the case of too much traffic it will be difficult to scale the system.
  - It does not have any security infrastructure and so is vulnerable to a
    cyber attack.

### Distributed web infrastructure design

File: [1-distributed_web_infrastructure](./1-distributed_web_infrastructure)

![1-distributed_web_infrastructure](./images/1-distributed_web_infrastructure.png)

- This design builds upon the simple web stack design by adding two more
  servers and in total making it a three server web infrastructure design.
- So the following requirements are added to the previous one:
  - 2 servers
  - 1 web server (Nginx)
  - 1 application server
  - 1 load-balancer (HAproxy)
  - 1 application files (codebase)
  - 1 database (MySQL)
