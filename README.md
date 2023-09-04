Jetporch Example Content
========================

This repo contains demo automatiom content for learning, exploration, and testing Jet!

role demos
==========

Our first demo sets up redis as an example application.  It does not
demo all language features but gives a strong overview of the basics so you can
get a feel for how things work.

Take a look at the files and then run the example.

For SSH push mode, first you will need to set up inventory.

1. copy the inventory directory to ~/private_inventory
2. pick what group you want to configure from your inventory editing 'groups' in playbooks/redis.yml
3. In cloud-based cases, you would probably want to use a cloud inventory source.  This is explained in the web page
documentation, lets do this by hostname or IP address for now.

Then we need to let Jet know about your SSH keys:

1. run "ssh-agent bash" to start an ssh-agent session if you don't already have one going
2. run "ssh-agent add ~/.ssh/id_rsa" or add another SSH key you can use to connect to your systems

It's about time to run Jet.

1. make sure the target/release directory from building 'jetp' is in your path.  
2. if you need to connect to another user than your current local username, export JET_SSH_USER=username, or set --user on the command line.
3. if this username is not root, uncomment the sudo line in the playbook or add --sudo root to the command line.

Ok, lets go.

Run "make redis_ssh_demo" or look at the Makefile to see the jet command line you need.

For local mode:

1. From a Enterprise Linux or Debian/Ubuntu host, run "sudo make redis_local"

questions
=========

see discord chat, documentation, and community info on https://www.jetporch.com/

license
=======

this example repo is public domain
