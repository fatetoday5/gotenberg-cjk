FROM gotenberg/gotenberg:8

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      fonts-noto-cjk \
      fonts-noto-cjk-extra && \
    fc-cache -fv && \
    rm -rf /var/lib/apt/lists/*

USER gotenberg