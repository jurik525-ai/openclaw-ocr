FROM docker.io/alpine/openclaw:latest

USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      tesseract-ocr \
      tesseract-ocr-deu \
      poppler-utils \
 && rm -rf /var/lib/apt/lists/*

USER node
