FROM python:latest
MAINTAINER Remilia i@linux.dog

COPY ftpd.py /home/py/
WORKDIR /home/py/

RUN pip install pyftpdlib \
        && mkdir ftpdfiles \
        && chmod -R 777 ftpdfiles

EXPOSE 8080

CMD ["python","ftpd.py"]
