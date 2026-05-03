# Generic per-app image. Expects a pre-built static binary at build/${Slug}-${Version}
# Build with native go (much faster than running golang:latest 450 times).
FROM scratch

ARG Slug=heartbeat
ARG BIN

COPY ${BIN} /app

ENV URI=${Slug}

EXPOSE 8080
ENTRYPOINT ["/app"]
