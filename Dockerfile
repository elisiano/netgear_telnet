FROM alpine:3

ENV ADMIN_USER admin
ENV ADMIN_PASSWORD password
ENV ROUTER_IP 192.168.1.1
ENV ROUTER_MAC_ADDRESS 00:00:00:00:00:00
ENV REBOOT false
ENV EXPECT_REBOOT_PROMPT_REGEX '\n(root|admin).*(>|\$|#) $'

ADD telnet-enable2.py /usr/local/bin/telnet-enable2.py
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ADD reboot-router.exp /usr/local/bin/reboot-router.exp
RUN apk add --no-cache expect inetutils-telnet python3

CMD [ "/usr/local/bin/entrypoint.sh" ]