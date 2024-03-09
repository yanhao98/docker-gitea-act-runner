# https://github.com/vegardit/docker-gitea-act-runner
FROM vegardit/gitea-act-runner:0.2.6
COPY --from=gitea/act_runner:nightly /usr/local/bin/act_runner /usr/local/bin/act_runner
RUN act_runner --version
