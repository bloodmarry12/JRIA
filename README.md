<p>
JRIA 英文全称Java Reload In-time Agent. 是实现JVM可以像动态脚本一样，实现即时修改即时加载生效功能，同时保持住当前的运行状态数据的功能,目前JRIA除支持原生的Java代码重加载实现外，还支持Spring2.0.x~2.5.x, Struts.2.x,Hibernate 3.x,Mybatis 3.0.x和Rigel-tcom框架和组件级的重加载实现。 JRIA核代码约三万行，完全由Rigel虚拟架构小组开发完成。<br>
目前JRIA 支持的JDK版本包括Sun JDK5.0.x和6.0.x两个版本。Sun JDK7.0.x将在后续考虑支持，目前没有针对JDK7进行测试
</p>

<p>
<pre>
10秒部署方案. JRIA的使用非常简单, 只需要以下一个部署。

把JRIA.jar文件下载到本地后，接下来就需要JVM的参数上进行配置
基本的配置说明如下:
     java -noverify -javaagent:{path}\JRIA.jar
     {path}表示JRIA.jar文件所在绝对路径.如 D:/JRIA.jar
</pre>
完成上述配置后， JRIA会自动对classpath下的class文件的时间戳进行检查，一旦被访问的类被检测有更新，JRIA会实现自动加载。

</p>

<p>
Eclipse开发集成
<pre>
方法1：Eclipse Tomcat 插件安装方法
![](http://i.imgur.com/zkOqsQU.png)

把 -noverify 和 -javaagent:{path}\JRIA.jar 配置到JVM参数设置上即可

方法2: Eclipse Servers自带插件
进入Run(运行)配置项
![](http://i.imgur.com/VO0gXg8.jpg)
</pre>
安装完成后，可以启动JVM,看到运行效果

![](http://i.imgur.com/zjE4A0n.png)
</p>

<p>
参数设置
<pre>
JRIA提供了一些参数设置功能

Package设置:
Package设置提供了对JRIA加载的class类的过滤功能设置。
建议加上设置，如不设置JRIA则会对所有的class进行动态加载，那么启的速度比较慢，所以JRIA提供了以下几个参数，方便使用
-Djria.package 表示需要进行动态加载的class package前缀。jria.exclude_package的优先级要高于jria.package
-Djria.package=com.baidu.rigel表示会对com.baidu.rigel 包前缀的class进行动态加载支持

-Djria.exclude_package 表示需要不进行动态加载的class package前缀
-Djria.exclude_package=org.springframework表示会对org.springframework 包前缀的class进不行动态加载支持

</pre>

</p>