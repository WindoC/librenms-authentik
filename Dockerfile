FROM librenms/librenms:26.1.0

RUN cd /opt/librenms/ && lnms plugin:add socialiteproviders/authentik
