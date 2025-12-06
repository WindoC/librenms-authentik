FROM librenms/librenms:25.11.0

RUN cd /opt/librenms/ && lnms plugin:add socialiteproviders/authentik
