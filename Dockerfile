FROM ubuntu:16.04 
MAINTAINER John Olson <inthebackofmymind@gmail.com> 

ENV INSTALL_PATH /files
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .

RUN apt-get -y update && apt-get -y install imagemagick tesseract-ocr python

CMD ["$INSTALL_PATH/convert_script", "example.pdf"]
