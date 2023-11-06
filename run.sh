#!/bin/bash


sudo docker run -w /home/dev/work --hostname dev -it --name verification \
	--cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
	-v "$(pwd)"/:/home/dev/work:z \
	verification-image /usr/bin/bash

# sudo docker run -w /home/dev/work --hostname dev -it \
# 	--cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
# 	-v "$(pwd)"/:/home/dev/work:z \
# 	verification-base /usr/bin/bash

