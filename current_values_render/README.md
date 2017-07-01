Render current values
=====================

The python script `feinstaub_render.py` listens some seconds for certain topics 
on an mqtt broker and generates an html file of the values afterwwards using the 
template file `current_values.tpl.html`. Look for variables marked with `{varname}` 
in the template file - these are substituted during generation.

The template itself relies on the [Bootstrap](https://getbootstrap.com/) framework.

Usage
-----

Open `feinstaub_render.py` and look for configuration values at the top.

The script needs some parameters. Use the ``--help`` option to list them.

    $ python feinstaub_render.py --help

Invoke the script in the following way (preferably from within a virtual 
environment):
 
    $ python feinstaub_render.py --template /my/template.tpl.html --target /var/www/feinstaub/live-data.html 

There is an example template file in the repository.

Check the generated html file. If the desired result appears, you can automate 
this process with a cron job.    
