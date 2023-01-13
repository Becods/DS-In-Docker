FROM becod/steamcmd:wine

ENV	STEAMAPP=The-Forest \
	STEAMAPPID=556450 \
    STEAMAPPDIR="/${STEAMAPP}-dedicated" \
	FDS_CONFIG_PATH="/data/config" \
    FDS_CONFIG_FILE="config.cfg" \
    FDS_SAVE_PATH="/data/saves" \
	ADDITIONAL_ARGS=""

EXPOSE 8766/tcp 8766/udp 27015/tcp 27015/udp 27016/tcp 27016/udp

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x "/entrypoint.sh"

WORKDIR ${STEAMAPPDIR}

VOLUME ${STEAMAPPDIR}

ENTRYPOINT ["/entrypoint.sh"]

CMD ["dl"]
