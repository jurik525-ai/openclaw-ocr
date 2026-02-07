FROM docker.io/alpine/openclaw@sha256:46f400ebc6256229f7e6c2bf34246d0c725f1f3eddf5691dfc0f4cbdcad09411

USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      tesseract-ocr \
      tesseract-ocr-deu \
      poppler-utils \
 && rm -rf /var/lib/apt/lists/*

USER node
