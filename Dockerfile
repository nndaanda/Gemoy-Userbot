FROM greycilik/cilikuserbot:buster

RUN git clone -b Gemoy-Userbot https://github.com/nndaanda/Gemoy-Userbot /home/gemoy-userbot/ \
    && chmod 777 /home/gemoy-userbot \
    && mkdir /home/gemoy-userbot/bin/

COPY ./sample_config.env ./config.env* /home/gemoy-userbot/

WORKDIR /home/gemoy-userbot/

CMD ["python3", "-m", "userbot"]
