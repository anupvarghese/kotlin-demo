FROM anupvarghese/openjdk
ENV KOTLIN_VERSION 1.2.10
ENV GRADLE_VERSION 4.4.1
ENV KOTLIN_COMPILER_URL https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip
ENV GRADLE_BIN_URL https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip

RUN apt-get update && \
   apt-get install -y wget unzip zip && \
   apt-get clean && \
   rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/gradle

RUN wget $GRADLE_BIN_URL -O /tmp/a.zip && \
    unzip /tmp/a.zip -d /opt/gradle && \
    rm /tmp/a.zip

RUN wget $KOTLIN_COMPILER_URL -O /tmp/a.zip && \
    unzip /tmp/a.zip -d /opt && \
    rm /tmp/a.zip


ENV PATH $PATH:/opt/kotlinc/bin
ENV PATH $PATH:/opt/gradle/gradle-${GRADLE_VERSION}/bin
