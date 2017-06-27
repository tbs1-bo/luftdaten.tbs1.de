Render current values
=====================

The python script `feinstaub_render.py` listens some seconds for certain topics 
on an mqtt broker and generates an html file of the values afterwwards using the 
template file `current_values.tpl`. Look for variables marked with `{varname}` 
in the template file - these are substituted during generation.

The template itself relies on the [Bootstrap](https://getbootstrap.com/) framework.

Usage
-----

Open `feinstaub_render.py` and look for configuration values at the top.

Invoke the script `python feinstaub_render.py` (preferably from within a virtual 
environment).

Check the generated html file.

If the desired result appears, you can automate this process with a cron job.

    crontab -e
    
To execute it every minute use a line similar to this:

    PRJ=/path/to/project
    * * * * * cd $PRJ && /path/to/venv/bin/python feinstaub_render.py
    
