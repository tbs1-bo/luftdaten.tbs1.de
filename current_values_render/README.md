Render current values
=====================

The python script `feinstaub_render.py` listens some seconds for certain topics 
on an mqtt broker and generates an html file of the values afterwwards using the 
template file `current_values.tpl`.

Usage
-----

Look into `feinstaub_render.py` for configuration values at the top.

Invoke the script `python feinstaub_render.py` (preferably from within a virtual 
environment).

Check the generated html file.

If the desired result appears, you can automate this with a cron job.

    crontab -e
    
To execute it every minute:

    PRJ=/path/to/project
    * * * * * cd $PRJ && /path/to/venv/bin/python feinstaub_render.py
    
