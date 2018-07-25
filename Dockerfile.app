# This is a sample application Dockefile, that uses my new base image
# in order to demonstrate that content is sourced from an alternative
# repo.

FROM my-base

RUN yum -y update
RUN yum -y install emacs
