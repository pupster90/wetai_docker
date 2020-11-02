FROM jupyter/tensorflow-notebook:latest
# Last Used image: jupyter/tensorflow-notebook:feacdbfc2e89
USER root
WORKDIR /home/jovyan

RUN git clone https://github.com/pupster90/wetai_docker.git
RUN cd ~/wetai_docker/Code && chmod +x Set_Computer.sh && ./Set_Computer.sh

EXPOSE 80
EXPOSE 8888
CMD ["jupyter","notebook"]
