FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install build-essential -y
RUN apt-get install cmake -y
RUN apt-get install doxygen -y
RUN apt-get install libarpack2-dev -y
RUN apt-get install libcurl4-openssl-dev -y
RUN apt-get install libfftw3-dev -y
RUN apt-get install python3 -y
RUN python3 --version
RUN apt-get install python3-pip -y
RUN pip3 install matplotlib==3.3.3
RUN pip3 install numpy==1.26.4
RUN apt-get install libsuperlu-dev -y
RUN apt-get install libpython3-dev -y
RUN apt-get install python3-dev -y
RUN apt-get install python3-numpy-dev -y
RUN apt-get install pkg-config -y
RUN git clone https://github.com/dafer45/TBTK
RUN mkdir TBTKBuild
WORKDIR /TBTK
RUN git checkout v2.6.5
WORKDIR /TBTKBuild
RUN cmake ../TBTK
RUN make
RUN make install
WORKDIR /workspaces/TBTKApplications