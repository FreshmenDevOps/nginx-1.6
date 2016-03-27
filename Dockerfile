#
# https://github.com/FreshmenDevOps/nginx-1.8
#

FROM centos:7

# Install nginx
RUN yum-config-manager --add-repo \
	http://download.opensuse.org/repositories/home:/FreshmenDevOps/CentOS_7/home:FreshmenDevOps.repo && \
	yum update --quiet --assumeyes && \
	yum install --quiet --assumeyes nginx-1.8 && \
	echo -e "\ndaemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/", "/var/log/nginx", "/srv/www"]

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
