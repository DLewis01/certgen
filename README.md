# certgen
Quick certificate generator for multiple sites owned by same organisation

This automates a lot of the text entry, you only need to set the company details once, after that the domain is the only variable you need to enter.
There was a time before letsencrypt where I had to generate almost a thousand certs yearly.


I wrote this to make my life somewhat bearable. With letsencrypt the need for this somewhat diminishes, but the code might help someone automate 
their particular set up.



Install
  1. Put the file in your local bin directory and chmod +x certgen.sh
  

  2. Edit the following lines with your own data
    country=
    state=
    locality=
    organization=
    organizationalunit=
    email=


Use:
certgen.sh your.domain
