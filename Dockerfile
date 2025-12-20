FROM librenms/librenms:25.12.0

RUN cd /opt/librenms/ && lnms plugin:add socialiteproviders/authentik
