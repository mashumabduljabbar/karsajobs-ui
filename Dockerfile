FROM node:14-alpine
WORKDIR /app
COPY /karsajobs-ui /app/
RUN npm install --unsafe-perm && npm run lint && npm run build
EXPOSE 8000
CMD ["npm", "run", "production"]
