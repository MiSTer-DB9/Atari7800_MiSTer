FROM theypsilon/quartus-lite-c5:17.0.2.docker0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile Atari7800.qsf
CMD cat /project/output_files/Atari7800.rbf
