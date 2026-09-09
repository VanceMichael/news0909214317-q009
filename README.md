# 航次许可协调器

这里是跨口岸游艇航次许可服务的后端代码库。现有 Java 入口仅提供进程健康状态，后续领域代码放在 `com.harbor` 包内。

## 编译运行

```bash
mkdir -p out
javac -d out src/main/java/com/harbor/App.java
java -cp out com.harbor.App
curl http://localhost:8080/health
```

## Docker

```bash
docker build -t voyage-coordinator .
docker run --rm -p 8080:8080 voyage-coordinator
docker compose up --build
```

运行配置和数据库凭据通过环境变量提供，禁止提交本地密钥。
