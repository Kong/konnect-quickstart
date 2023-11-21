FROM kong/kong-gateway:3.5
USER root
RUN mkdir /usr/local/share/lua/5.1/kong/plugins/kong-customheader
ADD  kong-customheader/plugin/. /usr/local/share/lua/5.1/kong/plugins/kong-customheader
USER kong