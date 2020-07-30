# Installation

## Requirements
- Apache2 (Other webservers have not been tested yet)
- MariaDB or MySQL
- PHP7.x

## Linux:
- We are using the current stable release of Debian 10 (buster) and its packages, others might need some adjustments
- [Set up a Webserver, Database, PHP and create a database user for the project](https://www.cyberciti.biz/faq/how-to-install-lamp-on-debian-10-buster/) 
- Clone the project from Github to where your Webserver can access it:

`git clone https://github.com/hoeso/hoeso.git`

## Windows:
- [Download and install XAMPP](https://www.apachefriends.org/download.html)
- Start Apache and MySQL through the XAMPP control panel 
- Download the [ZIP file](https://github.com/hoeso/hoeso/archive/master.zip) from GitHub and extract it into the `htdocs` folder of your XAMPP installation
- Open your webbrowser and go to http://localhost/hoeso-master/

## Using UserDirectory on Linux (recommended)

We recommend creating a new user for this project and enabling [UserDirectory](https://wiki.ubuntu.com/UserDirectoryPHP) so you can access it through your browser via http://localhost/~USERNAME/hoeso

You can then clone the GitHub repository into the Document root of that user:
```
mkdir ~/public_html
cd ~/public_html
git clone https://github.com/hoeso/hoeso.git
```

This way you can simply create a new user whenever you start a new project and have everything neatly separated.


