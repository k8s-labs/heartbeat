FROM scratch

EXPOSE 8080
ENTRYPOINT [ "./pos" ]
CMD [ "-u", "pos" ]

COPY --from=heartbeat heartbeat pos
