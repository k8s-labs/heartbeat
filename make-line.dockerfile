FROM scratch

EXPOSE 8080
ENTRYPOINT [ "./make-line" ]
CMD [ "-u", "make-line" ]

COPY --from=heartbeat heartbeat make-line
