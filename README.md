s provides a script to start a trytond session using a docker container (jcnorman/tryton).
It is linked to postgres and sshd images
The script checks to see if a container is running each image, and starts a container for it, if not.
It then starts an interactive container 
After starting and getting the # prompt, type supervisord.  This starts postgres, sshd, and trytond.

You can then, in a different terminal, type "tryton" (without the quotes) to start a tryton session.

