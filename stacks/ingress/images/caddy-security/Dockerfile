ARG CADDY_VERSION=2.7

FROM caddy:${CADDY_VERSION}-builder AS builder

RUN xcaddy build --with github.com/greenpau/caddy-security

FROM caddy:${CADDY_VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
