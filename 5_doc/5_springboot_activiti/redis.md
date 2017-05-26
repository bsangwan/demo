## redis

*	./gradlew -Pchapter=12 run

		build.gradle
		
    
    redis quick start

    *   非保护模式启动          redis-server --protected-mode no &
    *   客户端                 redis-cli
    *   客户端取测试数据        hget article:1 title
    *   keys *
                    
    *          ps aux| grep redis-server   

    
