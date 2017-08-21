
# ICM System

Web application for managing Operator Configurations.


## Features

**Feature 1**



**Feature 2**



**Feature 3**



**Feature 4**



**Accesss control**

Using EmailId & Password

LDAP authentification: configure applicationto use your LDAP server for user authentication.

**Seamless data migration betweeen different installations**


Admin user can download the entire data as a single JSON file.

And then restore the account at different installation by simply uploading the JSON.

**Works on mobile phones**



## Screenshots



## Installation

### Cloud hosting

Visit http://icm.lge.com/


### Self hosting

Install ICM System application within your infrastructure:

(make sure you have Node.js and MySQL installed)

```bash
cd icmsystem/application
npm install (first time)
npm start
```
Open http://localhost:3000/ in your browser.

## Run tests

Need to develop a wide test coverage, to make sure that the main user paths work as expected.

Please run them frequently while developing the project.

```bash
npm test
```

(make sure that application with default settings is up and running)

Any bugfixes or enhancements should have good test coverage to get them into "master" branch.

## Updating existing instance with new code

In case one needs to patch existing instance of ICM application with new version:

```bash
repo init
repo sync
npm install
npm run-script db-update
npm start
```

## Feedback

Please report any issues or feedback to icm-feedback@lge.com

