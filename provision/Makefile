deploy:
	@echo $(COMMIT_SHA)
	ansible-playbook -vvv \
		-i inventory/staging.ashe.ini \
		playbooks/ashe.provision.tools.yml
