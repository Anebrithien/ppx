FROM continuumio/miniconda3

# mkdir for /data
RUN mkdir /opt/project

# set conda channels
COPY .condarc /root/.condarc

# set conda env
#RUN conda create -n env python=3.7
#RUN echo "source activate env" > ~/.bashrc
#ENV PATH /opt/conda/envs/env/bin:$PATH

#RUN conda init bash
#RUN conda activate env

# install libs we want
RUN conda install -y -c conda-forge pygrib
RUN conda install -y scipy 
RUN conda install -y matplotlib
RUN conda install -y pandas
RUN conda install -y -c conda-forge metpy

