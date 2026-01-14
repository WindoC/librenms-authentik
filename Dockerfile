FROM librenms/librenms:26.1.1

RUN cd /opt/librenms/ && lnms plugin:add socialiteproviders/authentik
