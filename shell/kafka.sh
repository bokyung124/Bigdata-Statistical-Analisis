# C 드라이브에 kafka-3.3.2 폴더 생성 후 설치파일 복사
# [사용자변수] %KAFKA_HOME% = c:\kafka-3.3.2
# [시스템변수] Path에 c:\kafka-3.3.2\bin\windows 추가

# zookeeper 이용한 kafka 환경 실행
bin\windows\zookeeper-server-start.bat config\zookeeper.properties
bin\windows\kafka-server-start.bat config\server.properties

# 새로운 이벤트 생성
bin\windows\kafka-topics.bat --create --bootstrap-server localhost:9092 --topic testevents
## 기본 포트: 9092

# kafka-producer 실행(이벤트 쓰기)
bin\windows\kafka-console-producer.bat --bootstrap-server localhost:9092 --topic testevents

# kafka-costumer 실행(이벤트 읽기)
bin\windows\kafka-console-consumer.bat --topic testevents --from-beginning --bootstrap-server localhost:9092