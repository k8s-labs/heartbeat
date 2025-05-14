FROM scratch

EXPOSE 8080
ENTRYPOINT [ "./timecard" ]
CMD [ "-u", "timecard" ]

COPY --from=heartbeat heartbeat timecard
