redis_ssh_demo:
	jetp ssh --playbook playbooks/redis.yml --roles ./roles --inventory ~/private_inventory --threads 30

redis_local:
	jetp local --playbook playbooks/redis.yml --roles ./roles --threads 30

