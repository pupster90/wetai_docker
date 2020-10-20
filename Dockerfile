FROM jupyter/tensorflow-notebook:latest
# Last Used image: feacdbfc2e89
USER root
WORKDIR /home/jovyan

RUN git clone https://github.com/pupster90/io_docker_setup.git
RUN cd ~/io_docker_setup && chmod +x Set_Computer.sh && ./Set_Computer.sh

EXPOSE 80
EXPOSE 8888
CMD ["jupyter","notebook"]
