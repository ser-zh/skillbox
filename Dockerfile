FROM node

RUN mkdir /flatris

COPY package.json /flatris

#RUN apt-get update
RUN yarn install --proguction

COPY . /flatris

WORKDIR /flatris
#RUN yarn install
RUN yarn test
RUN yarn build
CMD yarn start
EXPOSE 3000