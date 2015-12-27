# This Dockerfile is used to build an image containing basic stuff to be used as a Jenkins slave build node.
FROM centos:centos7
MAINTAINER Venkatesan Packiriswamy <pvenkatesan.nj@gmail.com>

# Make sure the package repository is up to date.
RUN yum -y update --security

# Install JDK 7 (latest edition)
RUN yum install -y java-1.7.0-openjdk

# Clean up YUM when done.
RUN yum clean all

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

