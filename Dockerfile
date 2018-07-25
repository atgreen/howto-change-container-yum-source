FROM rhel

ADD GreenLab-key.pem /
ADD GreenLab.crt /
ADD greenlab.repo /etc/yum.repos.d/
RUN rm /etc/rhsm-host
