FROM node:8


# 指定工作目录
WORKDIR /app

# 将当前目录下的所有文件拷贝到工作目录下面
COPY ./src  /app/
COPY ./package.json  /app/
COPY ./config  /app/
COPY ./build  /app/

RUN   npm  install

EXPOSE  3000

CMD [ "npm", "start" ]
