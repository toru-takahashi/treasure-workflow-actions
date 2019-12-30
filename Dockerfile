FROM szyn/docker-digdag:latest

LABEL "com.github.actions.name"="Github Actions for Treasure Wofklow"
LABEL "com.github.actions.description"="Push your project to Treasure Workflow"
LABEL "repository"="https://github.com/toru-takahashi/treasure-workflow-actions"
LABEL "maintainer"="Toru Takahashi <torutakahashi.ayashi@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]