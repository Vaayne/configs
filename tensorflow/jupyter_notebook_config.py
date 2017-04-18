# Set options for certfile, ip, password, and toggle off
# browser auto-opening
#c.NotebookApp.certfile = u'/home/vaayne/jupyter/fullchain.pem'
#c.NotebookApp.keyfile = u'/home/vaayne/jupyter/privkey.pem'
# Set ip to '*' to bind on all interfaces (ips) for the public server
c.NotebookApp.ip = '*'
c.NotebookApp.password = 'sha1:73374181185e:d128f954c7c9967146e2ad3735a5bbb09012b0bd'
c.NotebookApp.open_browser = False

# It is a good idea to set a known, fixed port for server access
c.NotebookApp.port = 8888
