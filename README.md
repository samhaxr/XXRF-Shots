# What is SSRF vulnerability?
Server Side Request Forgery (SSRF) is a type of vulnerability that enables attackers to send specially crafted requests through a vulnerable web application. With this technique, attackers can gain unauthorized access to internal resources behind a firewall, which would typically be inaccessible from external networks. In other words, the attacker is able to trick the server into making requests on their behalf, allowing them to manipulate the server's behavior and potentially gain access to sensitive data or resources. This vulnerability class is particularly dangerous, as it can be used to compromise entire networks and can result in significant damage and loss.

# Installation 
```
git clone https://github.com/ariya/phantomjs.git
cd phantomjs
chmod +x build.py
./build.py
```
# Usage
```
./xxrf.sh
```
To use the script, you need to enter a URL that contains a vulnerable parameter and then hit the return key. The script is designed to execute two distinct tasks. Firstly, it injects a payload next to the vulnerable parameter in the URL, and then it processes the request by passing it to another Python script developed by @maaaaz. This script requires phantomJS to perform a screenshot function. Using the list of injected payloads, the script takes screenshots and saves them in a designated directory for screenshots.

Example: https://www.example.com/index.php?url=

# Youtube

[![XXRF shots](https://img.youtube.com/vi/z9ct4OoRQ_M/0.jpg)](https://www.youtube.com/watch?v=z9ct4OoRQ_M)
