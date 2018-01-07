### Kotlin Setup

- Pull docker image

`docker pull anupvarghese/kotlin`

- Run Container

`docker run -v $(pwd):/home -it anupvarghese/kotlin bash`

- Init Java lib using `gradle`

`gradle init --type java-library`

- Modify `build.gradle` to use `kotlin`

- Remove `java` folders and create `kotlin` folders

`rmdir src/main/java && mkdir src/main/kotlin/demo`
`rmdir src/test/java && mkdir src/test/kotlin/demo`

- Build `gradle`

`gradle build`

- Run

`gradle run`
