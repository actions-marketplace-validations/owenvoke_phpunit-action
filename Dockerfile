FROM php:7.3-cli

LABEL version="0.0.0"
LABEL repository="https://github.com/pxgamer/phpunit-action"
LABEL homepage="https://github.com/pxgamer/phpunit-action"
LABEL maintainer="Owen Voke <owzie123@gmail.com>"

LABEL com.github.actions.name="GitHub Action for PHPUnit"
LABEL com.github.actions.description="Wraps the PHPUnit CLI to enable common PHPUnit commands."
LABEL com.github.actions.icon="check-circle"
LABEL com.github.actions.color="blue"
COPY LICENSE.md README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
