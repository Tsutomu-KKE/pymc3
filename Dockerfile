FROM tsutomu7/scientific-python

RUN apt-get update --fix-missing && \
    apt-get install -y git g++ && \
    apt-get clean && \
    pip install git+https://github.com/pymc-devs/pymc3 && \
    rm -rf /var/lib/apt/lists/* /root/.c*
CMD ["/bin/bash"]
