FROM cypress/browsers:node-20.10.0-chrome-121.0.6167.85-1-ff-118.0.2-edge-118.0.2088.46-1

WORKDIR /

COPY ./package.json .
COPY ./package-lock.json .
COPY ./tsconfig.json .
COPY ./cypress.config.ts .
COPY ./cypress ./cypress

RUN npm install && npx cypress info

ENTRYPOINT ["npm", "run", "e2e"]
