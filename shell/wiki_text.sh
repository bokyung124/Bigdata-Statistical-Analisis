: << 'END'
https://dumps.wikimedia.org/kowiki/latest/ 에서 
kowiki-latest-pages0articles.xml.bz2 다운로드 후 압축해제
XML -> TXT로 변환 : Ruby의 wp2txt dldyd
END

# Windows용 Ruby 설치
gem install wp2txt

# kowiki-latest-pages-articles.xml을 Kowiki 폴더에 저장

# 폴더 cmd 창에서
wp2txt -i kowiki-latest-pages0articles.xml -c
    # kowi..articles-1.xml ~ kowi....articles-429.xml
    # kowi..articles-1.txt ~ kowi....articles-429.txt
    # kowi..articles.txt 생성

# kowiki의 경우 파일명 번호가 fwf가 아님 (1, 2, 3, ...., 10, ..., 100)
# python 이용하여 파일명 수정한 후 작업
# /python/Rename_Files.ipynb
```
import os
os.chdir("d:\Bigdata\Kowiki")

경로 = 'D:\Bigdata\Kowiki'
파일리스트 = os.listdir(경로)

공통이름 = 'kowiki-latest-pages-articles-'
확장자 = '.txt'
공통길이 = len(공통이름)
최대길이 = len(공통이름) + 3 + len(확장자)
print(공통길이, 최대길이)
# 29 36

for 파일 in 파일리스트:
    if 공통이름 in 파일 and 확장자 in 파일:
        추가길이 = 최대길이 - len(파일)
        if 추가길이 > 0:
            추가이름 = ""
            for i in range(추가길이):
                추가이름 += "0"
            새이름 = 공통이름 + 추가이름 + 파일[공통길이:]
            print(새이름)
            os.rename(파일, 새이름)
```

type kowiki-latest-pages-articles-001.txt | more
# 모든 파일 병합해서 Kowiki.txt로 저장
type kowiki-latest-pages-articles-*.txt >> Kowiki.txt

# 하둡의 /Wiki 폴더에 Wiki 자료 업로드
cd %HADOOP_HOME%\sbin
start-all.cmd
hadoop fs -mkdir /Wiki
hadoop fs -put Kowiki.txt /Wiki
hadoop fs -ls /Wiki

# localhost:9870 -> Utilities -> Browse the filesystem에서도 확인