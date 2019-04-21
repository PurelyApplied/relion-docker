FROM x11vnc/desktop:17.10

LABEL author="Patrick Rhomberg, for his dear brother, Colin Hawkinson."
LABEL author_contact="coding@patrhom.com"

RUN apt update
RUN apt install -y git
RUN git clone https://github.com/3dem/relion.git /relion

# From the README
RUN apt install -y cmake build-essential mpi-default-bin mpi-default-dev libfftw3-dev
# Apparently missing from the README
RUN apt install -y libx11-dev

# Install vnc, xcfb to host a fake display
#RUN apt install -y x11vnc
#RUN apt install -y xvfb ;\
#    mkdir -p /root/.vnc ;\
#    x11vnc -storepasswd 1234 /root/.vnc/passwd ;\
#    echo "relion" >> /.bashrc

RUN mkdir -p /relion/build ;\
    cd /relion/build ;\
    cmake ..

RUN cd /relion/build/ ; make ;

RUN echo "alias relion=/relion/build/bin/relion" >> .bash_aliases

