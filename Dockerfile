FROM node:18

RUN apt-get update && \
  apt-get install -y ffmpeg imagemagick webp && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/xhclintohn/Toxic-MD /root/toxic
WORKDIR /root/toxic/

# Is line ko dhyan se dekhein, yahi fix hai
RUN npm install --legacy-peer-deps

CMD ["node", "index.js"]
