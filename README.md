# What is SSRF vulnerability?
Server Side Request Forgery (SSRF) is a type of vulnerability class where attacker sends crafted request from a vulnerable web application, including the unauthorised access to the internal resources behind the firewall which are inaccessible directly from the external network.

# Installation 
git clone https://github.com/ariya/phantomjs.git

cd phantomjs

chmod +x build.py

./build.py

# Usage

./xxrf.sh

Enter the url with vulnerable parameter and hit return key. The script is designed to perform two different tasks. At first it will inject the payload next to the vulnerable parameter and process the request to another python script written by @maaaaz. The python script requires phantomJS to perform screenshot function. It uses the list of injected payload and screenshots them and places them in a screenshot directory.

Example: https://www.example.com/index.php?url=

# Youtube

[![XXRF shots](https://img.youtube.com/vi/z9ct4OoRQ_M/0.jpg)](https://www.youtube.com/watch?v=z9ct4OoRQ_M)
