FROM node:18 AS base

CMD ["bash"]

FROM base AS build
COPY . /workspace
WORKDIR /workspace
ARG REACT_APP_API_SERVER
RUN npm ci && npm run build

FROM nginx:latest AS production
COPY --from=build /workspace/build /var/www
COPY nginx.conf /etc/nginx/conf.d/default.conf