FROM ubuntu:18.04

RUN apt-get update --fix-missing && apt-get install tzdata -qy &&\
	apt-get install -qy build-essential \
	cmake git wget \
    python3-pip python3-setuptools \
    libjpeg-dev libtiff5-dev libpng-dev \
    pkg-config sudo vim curl

# add user
RUN useradd -m developer && \
    usermod -aG sudo developer && \
    echo '%sudo ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && \
    cp /root/.bashrc /home/developer/ && \
    mkdir /home/developer/projects && \
    chown -R --from=root developer:developer /home/developer

# Use C.UTF-8 locale to avoid issues with ASCII encoding
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

WORKDIR /home/developer/projects
ENV HOME /home/developer
ENV USER developer
USER developer

RUN git clone https://github.com/hasbegun/ParlAI.git && \
    cd ParlAI && \
    pip3 install -r requirements.txt && \
    sudo python3 setup.py develop && \
    cd .. && sudo rm -rf ParlAI

ENV PATH /home/developer/.local/bin:$PATH
# Avoid first use of sudo warning. c.f. https://askubuntu.com/a/22614/781671
RUN touch $HOME/.sudo_as_admin_successful

CMD ["/bin/bash"]
