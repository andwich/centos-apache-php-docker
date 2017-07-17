FROM centos:6.6

MAINTAINER ""

LABEL version="0.1.0" \
      description=""


# Install: epel remi repository
RUN set -x && \
    rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm && \
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && \
    set +x

# Install: PHP5.6
RUN set -x && \
    yum -y install --enablerepo=remi,remi-php56 php php-mbstring && \
    set +x


# Install: httpd2
RUN set -x && \
    yum -y install httpd && \
    set +x


# Transfer port
EXPOSE 80


# Start Apache
CMD /etc/init.d/httpd start && \
    /bin/bash
