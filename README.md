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
Web.xml

ApplicationContext.xml

数据库配置文件db.properties

Hibernate.cfg.xml

Struts配置文件struts.xml

Pojo层采用的是映射文件的方式
Category新闻类型类

News新闻类

Category.hbm.xml

News.hbm.xml

Dao层采用的是依赖注入hibernateTemplate，让hibernateTemplate处理持久化操作
CategoryDaoImpl类

NewsDaoImpl类

Service层
CategoryServiceImpl

NewsServiceImpl

Action层(Controller层)
关键部分代码
CategoryAction


NewsAction


LoginAction(对数据非空有效性验证)

前台页面

项目运行截图

对标题模糊查询

点击发布时间查询，得到对应时间的新闻

点击图片或标题超链接，跳转


按新闻类型分块列表显示每类新闻


登录页面(非空错误验证)

后台





