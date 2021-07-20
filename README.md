S2SH-demo(基于S2SH的新闻管理系统)

项目前言:
本次轻量级框架课程设计，由自己独立完成，系统编写的过程可谓是一波三折，我认为整个实现的过程数搭建环境最为重要了，因为环境没搭好，后续会出一大堆的问题，比如说Spring，在web.xml里配置spring IOC的监听器监听，我一开始启动tomcat部署项目就是报的spring ioc 监听器的ClassNotFoundExcption，后来发现是没导spring web和日志文件那个包，struts和spring搭建也是需要struts的spring插件，这些jar包对于搭建项目环境缺一不可，只有搭建好了环境，才能下一步，所以搭环境在整个项目中真的是最为关键的，在搭建好项目环境后，我正式开启了编写，编写过程中出现问题的大部分都是在sql语句的编写上，由于我用的是全自动化的hibernate框架，远不如半自动化的mybatis灵活，所以基本上只能执行一些简单的sql语句，项目中唯一有点复杂的sql语句估计就是表与表连接外键的那个语句，那个语句我一开始也不知道应该怎么执行，后来上网查了查hibernateTemplate有一个hql的语句执行的方法，好像叫find(String query,Object ...)的，然后通过这个方法尽数解决了项目存在的一些问题，实现了系统需求的功能.
总体来说，本次课设收获良多，希望这些经验能有助于我日后的工作吧.

项目功能描述:
  前台功能：
a)首页按新闻类型分块列表显示每类新闻； 每条新闻显示的内容包括新闻标题和发布时间，要求对标题设置超链接，点击该链接后新开一个页面显示该新闻标题、发布时间、内容和来源。
b)在首页中还可以实现标题的模糊查询以及发布时间的范围查询。
  后台功能：
a)后台必须具有权限的用户才可以登录。
b)进入后台的用户，可以管理新闻类型和新闻。
c)新闻类型管理包括：发布新闻类型、新闻类型查看。点击新闻类型后打开新闻类型列表。在列表中的每条类型可以执行删除和更新操作。
d)新闻管理包括：发布新闻、新闻查看。点击新闻类型后打开新闻类型列表。在列表中的每条类型可以执行删除和更新操作。
e)新闻列表显示时可分页显示（可选）
f)要求用户登录、发布新闻类型以及发布新闻时进行标题、内容等项目的前端和后端数据非空有效性校验，另外要求新闻必须属于某个类型。

项目截图

数据库配置文件db.properties
![image](https://user-images.githubusercontent.com/72901123/126278069-0644f51b-1dd3-4ae4-96e4-8441e4fd2422.png)

Hibernate.cfg.xml
![image](https://user-images.githubusercontent.com/72901123/126278109-c5c6c905-9f34-451c-9630-db800ad6d58e.png)


Struts配置文件struts.xml
![image](https://user-images.githubusercontent.com/72901123/126278133-4d484e04-c6eb-4b93-8c75-fb6cf7f79d30.png)

Category新闻类型类
![image](https://user-images.githubusercontent.com/72901123/126278409-43ff95a0-250d-4f52-9792-f231d0d55e84.png)


News新闻类
![image](https://user-images.githubusercontent.com/72901123/126278444-ddbd8662-849e-43fb-b257-9f86eaabb5ae.png)


Category.hbm.xml
![image](https://user-images.githubusercontent.com/72901123/126278459-0337da0a-176d-47a8-a5b3-56150217217b.png)


News.hbm.xml
![image](https://user-images.githubusercontent.com/72901123/126278477-8fd6afec-03ca-40b8-9bcd-a2858d47617a.png)


Dao层采用的是依赖注入hibernateTemplate，让hibernateTemplate处理持久化操作
CategoryDaoImpl类
![image](https://user-images.githubusercontent.com/72901123/126278517-2cfa1ab9-6de2-46de-853e-69fcd66be5d4.png)


NewsDaoImpl类
![image](https://user-images.githubusercontent.com/72901123/126278533-0573c3fd-ef99-4eae-956f-995e6ea7544d.png)

Service层
CategoryServiceImpl
![image](https://user-images.githubusercontent.com/72901123/126278563-ccec7dbb-d866-42c3-b177-f223c9ef214c.png)


NewsServiceImpl


Action层(Controller层)
关键部分代码
CategoryAction
![image](https://user-images.githubusercontent.com/72901123/126278631-58590b72-b46f-4695-bf7e-31864a19abd9.png)


NewsAction
![image](https://user-images.githubusercontent.com/72901123/126278656-1034853e-ecbc-470d-b7c7-f2ae9384b9af.png)


LoginAction(对数据非空有效性验证)
![image](https://user-images.githubusercontent.com/72901123/126278681-c5c3c2fd-6837-46df-a7d3-378fae146310.png)


前台页面


项目运行截图
![image](https://user-images.githubusercontent.com/72901123/126278748-b3c861b9-2f8e-4405-9a52-66838ad5749b.png)

对标题模糊查询
![image](https://user-images.githubusercontent.com/72901123/126278772-93d5028d-dea5-4652-996b-c0566c371321.png)

点击发布时间查询，得到对应时间的新闻
![image](https://user-images.githubusercontent.com/72901123/126278812-86711cf9-4e54-4859-a2a8-878cb8c65db5.png)

点击图片或标题超链接，跳转
![image](https://user-images.githubusercontent.com/72901123/126278832-7d5c4ed1-3385-42b3-845d-fb3f9559ed49.png)


按新闻类型分块列表显示每类新闻
![image](https://user-images.githubusercontent.com/72901123/126278870-b3210f68-85fe-4273-ad02-e83194ec0397.png)
![image](https://user-images.githubusercontent.com/72901123/126278881-10f8f2d4-2176-4641-bbd1-79ac8c4eb043.png)


登录页面(非空错误验证)
![image](https://user-images.githubusercontent.com/72901123/126278906-1cffbdf4-0c3a-4781-b786-305dc574c6b7.png)

后台
![image](https://user-images.githubusercontent.com/72901123/126279042-b699dc50-7455-451f-b31e-8fd166e9a2c8.png)
![image](https://user-images.githubusercontent.com/72901123/126279055-84ae291f-1b2f-4c88-9770-ee0a284a50ca.png)
![image](https://user-images.githubusercontent.com/72901123/126279071-0bc868f6-845c-4a5f-8b73-ccc93b11d0c2.png)
![image](https://user-images.githubusercontent.com/72901123/126279086-d8f181e9-d1a5-45ae-bd16-85f9d585b07b.png)
![image](https://user-images.githubusercontent.com/72901123/126279104-9d5efafc-5934-4d48-8553-5214ae0860a3.png)








