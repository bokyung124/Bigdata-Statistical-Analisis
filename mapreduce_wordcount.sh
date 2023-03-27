# d:\Bigdata\I-have-a-dream.txt 파일을 /Input에 put 후 wordcount 계산 결과를 /Output에 출력
# path %HADOOP_HOME% : C:\hadoop-3.2.2

cd %HADOOP_HOME%\share\hadoop\mapreduce
hadoop fs -mkdir /Input
hadoop fs -put d:\Bigdata\I-have-a-dream.txt /Input
hadoop jar hadoop-mapreduce-examples-3.2.2.jar wordcount /Input/I-have-a-dream.txt /Output

# 파일 내용 출력
hadoop fs -cat /Output/*    

# 하둡은 데이터 처리의 기본 단위가 128MB -> 작은 데이터를 입력해도 128MB 단위로 저장 