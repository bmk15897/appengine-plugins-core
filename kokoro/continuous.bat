@echo on

cd github/appengine-plugins-core

call gcloud.cmd components update --quiet
call gcloud.cmd components install app-engine-java --quiet

mvn --version
mvn clean install cobertura:cobertura -B -U
REM curl -s https://codecov.io/bash | bash

exit /b %ERRORLEVEL%