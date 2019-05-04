FROM node:lts-alpine

ADD package.json /tmp/package.json
ADD package-lock.json /tmp/package-lock.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app 
RUN cp -a /tmp/node_modules /opt/app/ 
RUN cp /tmp/package.json /opt/app/

ADD ./backend /opt/app/backend/
WORKDIR /opt/app

# Heroku specific: Heroku doesn't support EXPOSE 
# and provide a $PORT variable
# EXPOSE 8082 		

# Heroku specific: Run the image as a non-root user
RUN adduser -D myuser
USER myuser

CMD npm start
