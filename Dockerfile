FROM tsutomu7/scientific-python

RUN sudo apt-get update --fix-missing && \
    sudo apt-get install -y --allow-unauthenticated git g++ && \
    sudo apt-get clean && \
    pip install git+https://github.com/pymc-devs/pymc3 && \
    sudo rm -rf /var/lib/apt/lists/* $HOME/.c*
EXPOSE 8888
VOLUME "$HOME"
CMD ["sh", "-c", "jupyter notebook --ip=*"]
