FROM alpine:3.4

VOLUME /var/www/html

# Include keyring to verify download
COPY phpmyadmin.keyring /

# Calculate download URL
ENV VERSION 4.6.4
ENV URL https://files.phpmyadmin.net/phpMyAdmin/${VERSION}/phpMyAdmin-${VERSION}-all-languages.tar.gz

# Download tarball, verify it using gpg and extract
RUN set -x \
    && export GNUPGHOME="$(mktemp -d)" \
    && apk add --no-cache curl gnupg \
    && curl --output phpMyAdmin.tar.gz --location $URL \
    && curl --output phpMyAdmin.tar.gz.asc --location $URL.asc \
    && gpgv --keyring /phpmyadmin.keyring phpMyAdmin.tar.gz.asc phpMyAdmin.tar.gz \
    && apk del --no-cache curl gnupg \
    && rm -rf "$GNUPGHOME" \
    && tar xzf phpMyAdmin.tar.gz \
    && rm -f phpMyAdmin.tar.gz phpMyAdmin.tar.gz.asc \
    && mv phpMyAdmin-$VERSION-all-languages /www \
    && rm -rf /www/js/jquery/src/ /www/js/openlayers/src/ /www/setup/ /www/sql/ /www/examples/ /www/test/ /www/po/ \
    && chown -R root:nobody /www \
    && find /www -type d -exec chmod 750 {} \; \
    && find /www -type f -exec chmod 640 {} \;

# Copy configuration
COPY config.inc.php /www/