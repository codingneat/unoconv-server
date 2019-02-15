FROM telemark/docker-node-unoconv

WORKDIR /app
COPY . .

ENV HOSTNAME 0.0.0.0
ENV PORT 4000

RUN yarn && yarn cache clean

RUN chmod u+x unoconv-server

EXPOSE 4000

CMD ["start"]

ENTRYPOINT ["./unoconv-server"]
