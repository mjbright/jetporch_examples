Jetporch Example Content
========================

This repo contains demo automatiom content for learning, exploration, and testing Jet!

Role demos
==========

Our first demo sets up redis as an example application.  It does not
demo all language features but gives a strong overview of the basics so you can
get a feel for how things work.

Take a look at the files in the repo and then we'll show you how to run the example.

Inventory Setup
===============

For SSH push mode, first you will need to set up inventory. You can skip this if you are going to run the
playbook locally.

1. copy the inventory directory to ~/private_inventory
2. pick what group you want to configure from your inventory editing 'groups' in playbooks/redis.yml
3. In cloud-based cases, you would probably want to use a cloud inventory source.  This is explained in the web page
documentation, lets do this by hostname or IP address for now.

SSH Keys
========

If attempting to run over SSH, we'll also need to let Jet know about your SSH keys:

1. run "ssh-agent bash" to start an ssh-agent session if you don't already have one going
2. run "ssh-agent add ~/.ssh/id_rsa" or add another SSH key you can use to connect to your systems

It's about time to run Jet
==========================

1. make sure the target/release directory from building 'jetp' is in your path.  
2. for SSH modes, if you need to connect to another user than your current local username, export JET_SSH_USER=username, or set --user on the command line.
3. for SSSH modes, if the desired login username on the remote machine is not root (good!), uncomment the sudo line in the playbook or add --sudo root to the command line.

Invoke SSH mode
===============

Run "make redis_ssh_demo" or look at the Makefile to see the jet command line you need.
You can run this from any Linux, Unix, or Mac machine.

Invoke Local Mode
=================

From a Enterprise Linux or Debian/Ubuntu host, run "sudo make redis_local".  Other OS types may be added to this example later.

Experimentation
===============

The following steps may help users new to configuration managemnet systems understand Jet.  For users coming from other tools, they may help familiarize
you with Jet output.

1. Edit the template (maybe add a comment line) and rerun the playbook.  Notice that the service restarts.
2. Change the port in role parameters or the role defaults, notice that the role parameter overrides the default.
3. Remove the role parameter for the port from the main playbook file. notice that the role parameter default now takes over.
4. Manually stop the service by logging in to the remote machine and running systemctl. Re-run the playbook. Notice that the only change made is to start the service.
5. On the remote system, delete /etc/redis/redis.conf. Re-run the playbook and notice that it gets put back.
   
Questions/Help?
===============

No problem! See discord chat, documentation, and community info on https://www.jetporch.com/

License
=======

This example repo is public domain.  Jet is a GPLv3 licensed program.

