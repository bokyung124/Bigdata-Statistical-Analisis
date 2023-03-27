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
```
import os

```
