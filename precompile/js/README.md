Duster.js - Watch & precompile dust.js templates
=============

A simple Node script <a href="https://github.com/dmix/dusterjs">duster.js</a> to watch a directory of .dust templates and compile them into .js files which can be included into an HTML file.

## Why duster.js? Autocompile your templates to use dust.js in the browser
The dust.js documentation does not mentioned a clear way to work with dust templates in a purely client-side approach, instead focusing on server-side node.js applications.

For my backbone.js app, the only option was to include the dust-full.js file and compile the templates on each browser load. The file is much larger than the normal dust-core.js and this approach provides no extra value over other templating solutions (performance, browser caching, external file management etc).

So I wrote a script to pre-compile dust.js files whenever they are modified in a folder.

## Install
Download duster.js to your project root folder and install dependencies:

    npm install dustjs-linkedin
    npm install watch

## Usage
Create dust.js templates in ./src/dusts/ with the file extension .dust and create ./public/dusts directory where files will be compiled to, then run watcher script:

    $ node duster.js

You can modify folder paths in the duster.js file

## Example:
    ./src/dusts/tweet.dust
    ./src/dusts/user.dust

Compiles to:

    ./public/dusts/tweet.js
    ./public/dusts/user.js

Then you include them in the html:

    <script src="dust-core-1.0.0.min.js"></script>
    <script src="tweet.js"></script>
    <script src="user.js"></script>

I then concatenate all the JS files before production deployment (using something like Jammit).

##  More information

@ericktai wrote an example app/tutorial on how to use dust.js client-side using duster.js: https://github.com/ericktai/dust-js-browser

Linkedin also wrote a dust.js tutorial: https://github.com/linkedin/dustjs/wiki/Dust-Tutorial

---
by Dan McGrady http://dmix.ca

