FROM vegardit/gitea-act-runner:0.2.6

COPY --from=gitea/act_runner:nightly /usr/local/bin/act_runner /usr/local/bin/act_runner
RUN act_runner --version
# docker build -t gitea-act-runner:0.2.6-nightly .
# docker run --rm --entrypoint act_runner gitea-act-runner:0.2.6-nightly --version
