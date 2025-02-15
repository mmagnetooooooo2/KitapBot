
FROM 412314/mltb:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt install git curl python3-pip ffmpeg -y

CMD ["bash", "start.sh"]
