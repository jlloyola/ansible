.PHONY: install_docker

install_docker:
	ansible-playbook playbooks/install_docker.yml $(EXTRA_ARGS)
