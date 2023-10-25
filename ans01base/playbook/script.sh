docker run -dit --name ubuntu pycontribs/ubuntu:latest sleep 6000000
docker run -dit --name centos7 pycontribs/centos:7 sleep 6000000
docker run -dit --name fedora pycontribs/fedora:latest sleep 6000000
ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass