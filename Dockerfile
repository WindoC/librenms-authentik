FROM librenms/librenms:24.6.0

RUN apk --update --no-cache add -t build-dependencies php-xmlwriter \
 && cd /opt/librenms/ \
 && chmod 777 /opt/librenms/composer.* \
              /opt/librenms/logs/*.log \
              /opt/librenms/scripts/composer_wrapper.php \
 && chmod 777 /opt/librenms/scripts \
              /opt/librenms \
              /opt/librenms/vendor/socialiteproviders \
              /opt/librenms/vendor/composer \
              /opt/librenms/vendor/composer/* \
              /opt/librenms/bootstrap/* \
 && lnms plugin:add socialiteproviders/authentik
