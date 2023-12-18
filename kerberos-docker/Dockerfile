FROM centos:6.6

RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum install -y krb5-server krb5-libs krb5-auth-dialog krb5-workstation 

EXPOSE 88 749

ADD ./config.sh /config.sh

RUN mkdir -p /volumes/keytabs /volumes/kerberos /volumes/users /var/log/kerberos
RUN touch /var/log/kerberos/krb5libs.log && \
    touch /var/log/kerberos/krb5kdc.log && \
    touch /var/log/kerberos/kadmind.log

ADD ./config.sh /config.sh
RUN chmod +x /config.sh

ENTRYPOINT ["/config.sh"]
