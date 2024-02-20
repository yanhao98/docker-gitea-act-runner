FROM gitea/act_runner:nightly AS act_runner
FROM vegardit/gitea-act-runner:0.2.6
COPY --from=act_runner /usr/local/bin/act_runner /usr/local/bin/act_runner
RUN act_runner --version
# docker build -t a/gitea-act-runner . --no-cache
# docker run --rm --entrypoint act_runner a/gitea-act-runner --version
