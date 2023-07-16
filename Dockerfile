FROM python:3.11-alpine

RUN apk --no-cache add \
    build-base \
    python3 \
    python3-dev \
    python3-tkinter \
    # wget dependency
    openssl \
    # dev dependencies
    bash \
    git \
    meson \
    py3-pip \
    # Pillow dependencies
    freetype-dev \
    fribidi-dev \
    harfbuzz-dev \
    jpeg-dev \
    lcms2-dev \
    libimagequant-dev \
    openjpeg-dev \
    tcl-dev \
    tiff-dev \
    tk-dev \
    zlib-dev

COPY docker-scripts/ /docker-scripts
RUN cd /docker-scripts \
    && chmod +x ./* \
    && ./install_webp.sh \
    && ./install_raqm.sh

WORKDIR /app

COPY requirements.txt /app

RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY database_updater/ /app/database_updater/
COPY flandria-frontend/ /app/flandria-frontend/
COPY migrations/ /app/migrations/
COPY webapp/ /app/webapp/
COPY after_build.py /app/after_build.py
COPY app.py /app/app.py

ENTRYPOINT ["python3"]
CMD ["app.py"]
