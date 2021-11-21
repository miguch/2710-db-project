FROM strapi/base:14
ENV NODE_ENV production
WORKDIR /app
COPY . .
RUN rm -rf node_modules
RUN yarn
# RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]