FROM librenms/librenms:25.6.0

RUN apk --update --no-cache add -t build-dependencies php83-xmlwriter \
 && chmod 777 /opt/librenms/composer.* \
              /opt/librenms/scripts/composer_wrapper.php \
 && chmod 777 /opt/librenms/scripts \
              /opt/librenms \
              /opt/librenms/vendor/socialiteproviders \
              /opt/librenms/vendor/composer \
              /opt/librenms/vendor/composer/* \
              /opt/librenms/bootstrap/* \
 && find /opt/librenms/storage/framework/cache -exec chmod 777 {} \; \
 && cd /opt/librenms/ && lnms plugin:add socialiteproviders/authentik
