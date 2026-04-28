FROM node:20

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/xhclintohn/Toxic-MD /root/toxic
WORKDIR /root/toxic/
RUN npm install

CMD ["node", "index.js"]
