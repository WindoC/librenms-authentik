FROM librenms/librenms:25.3.0

RUN apk --update --no-cache add -t build-dependencies php83-xmlwriter \
 && cd /opt/librenms/ \
 && chmod 777 /opt/librenms/composer.* \
              /opt/librenms/scripts/composer_wrapper.php \
 && chmod 777 /opt/librenms/scripts \
              /opt/librenms \
              /opt/librenms/vendor/socialiteproviders \
              /opt/librenms/vendor/composer \
              /opt/librenms/vendor/composer/* \
              /opt/librenms/bootstrap/* \
 && lnms plugin:add socialiteproviders/authentik
