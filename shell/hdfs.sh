# C드라이브에 hadoop-3.2.2 폴더 생성 후 hadoop 압축 파일 복사
# https://github.com/Statfunny/Bigdata-Statistical-Analysis - hadoop 설정 파일 수정한 버전

# namenode 폴더 설치
hdfs namenode -format

# hdfs 실행
cd C:\hadoop-3.2.2\bin
## 하둡 클러스터 시작, datanode 생성
start-dfs.cmd      
## 하둡 데몬(프로세스) 확인      
jps   

# localhost:9870에서 하둡 클러스터 확인

# MapReduce 실행
start-yarn.cmd
jps

# localhost:8088, localhost:8042

# 일괄 실행 및 종료
start-all.cmd
stop-all.cmd