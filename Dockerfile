# Using Python Slim-Buster
FROM xluxz/geezproject:buster
# ramubot minta wkwk
# Geez-UserBot
#
RUN git clone -b DHAN-UBOT https://github.com/ramadhan73/DHAN-UBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ramadhan73/DHAN-UBOT/DHAN-UBOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]