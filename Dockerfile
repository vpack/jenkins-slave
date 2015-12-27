# This Dockerfile is used to build an image containing basic stuff to be used as a Jenkins slave build node.
FROM centos:centos7
MAINTAINER Venkatesan Packiriswamy <pvenkatesan.nj@gmail.com>

# Make sure the package repository is up to date.
RUN yum -y update --security

# Install JDK 7 (latest edition)
RUN yum install -y openjdk-8-jdk

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

