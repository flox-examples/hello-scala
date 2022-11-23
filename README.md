## flox usage

First, run `flox build` in the root of the project to obtain a development environment


Next, run `flox build` in the root of the project to build an "uberjar"

...finally, , run 
```
java -jar result/scala-3.2.1/hello-scala-assembly-0.1.0-SNAPSHOT.jar
Hello world!
I was compiled by Scala 3. :)
```

## sbt project compiled with Scala 3

### Usage

This is a normal sbt project. You can compile code with `sbt compile`, run it with `sbt run`, and `sbt console` will start a Scala 3 REPL.

For more information on the sbt-dotty plugin, see the
[scala3-example-project](https://github.com/scala/scala3-example-project/blob/main/README.md).
