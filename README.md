# AspectJ

idea下载开启插件aspectj

```xml
<build>
    <plugins>
        <plugin>
            <groupId>org.codehaus.mojo</groupId>
            <artifactId>aspectj-maven-plugin</artifactId>
            <version>1.11</version>
            <executions>
                <execution>
                    <goals>
                        <goal>compile</goal>
                    </goals>
                </execution>
            </executions>
            <configuration>
                <source>1.8</source>
                <target>1.8</target>
                <sourceDirectory>src/main/aspect</sourceDirectory>
                <outputDirectory>target/aspect-classes</outputDirectory>
            </configuration>
        </plugin>
    </plugins>
</build>
```
