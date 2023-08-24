FROM node:lts AS runtime
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
ENV HOST=0.0.0.0
ENV PORT=8080
EXPOSE 3000
CMD node ./dist/server/entry.mjs
