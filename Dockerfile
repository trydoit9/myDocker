# 베이스 이미지로 Ubuntu 사용
FROM ubuntu:22.04
run mkdir /xxxxx

# 비대화형 설치를 위한 환경 변수 설정
ENV DEBIAN_FRONTEND=noninteractive

# 패키지 업데이트 및 nginx 설치
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Nginx가 포트 80에서 동작하므로 포트 노출
EXPOSE 80

# Nginx를 포그라운드에서 실행
CMD ["nginx", "-g", "daemon off;"]
