# SpringBoot的使命
- 化繁为简

# SpringBoot的核心功能：
- 独立运行 java -jar xx.jar
- 内嵌web服务器
- 简化配置，自动化、通过starter简化maven的配置
- 准生产的应用监控

# SpringBoot与微服务的关系
- Java的润滑剂

# SpringCloud的使命
- 简化Java的分布式系统
- 一系列框架的集合
- SpringBoot封装，基于SpringBoot的分布式开发工具

# SpringCloud VS SpringBoot
- SpringBoot意在简化配置，是一种开发配置风格
- SpringCloud意在简化分布式，是功能的集合，风格的统一

# SpringCloud VS 微服务
- Java的微服务解决方案
- 侧重功能和开发

# SpringCloud的核心组件
- Netflix Eureka 服务发现组件、注册中心
- Netflix Ribbon 客户端负载均衡组件
- Netflix Hystrix 调度器
- Netflix Zuul 服务网关
- SpringCloud Config 分布式配置

# 业务场景
- 单点登录，用户可以注册和登录
- 微服务架构下的应用是无状态的，避免使用session
- 登录用户可以对课程进行CRUD操作

# 用户服务
- 用户登录
- 用户注册
- 用户基本信息查询
- 无状态（无session)
- 单点登录（SSO）

# 课程服务
- 登录验证
- 课程的CRUD

# 信息服务
- 发送邮件
- 发送短信

# 用户edgeservice
# 课程edgeservice
# API GATEWAY

- 定义监听端口
transport = TSocket.TServerSocket("localhost", "9090")
- 定义传输方式 帧传输
tfactory = TTransport.TFramedTransportFactory()
- 定义传输协议 二进制传输协议
pfactory = TBinaryProtocol.TBinaryProtocolFactory()
- 创建server
server = TServer.TSimpleServer(processor, transport, tfactory, pfactory)

sudo pip2 install thrift --upgrade --ignore-installed six

Cannot uninstall 'six'. It is a distutils installed project and thus we cannot 
accurately determine which files belong to it which would lead to only a partial uninstall.

https://maven.apache.org/plugins/maven-compiler-plugin/usage.html
https://maven.apache.org/plugins/maven-compiler-plugin/examples/set-compiler-source-and-target.html