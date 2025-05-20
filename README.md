# myDocker

Ubuntu 22.04 기반의 개발용 Docker 이미지입니다. 개발자 계정과 필수 도구들이 사전 설치되어 있어, 빠르게 개발 환경을 구성할 수 있습니다.

## 📦 기본 정보

* **Base Image**: `ubuntu:22.04`
* **사용자 계정**: `dev` (UID/GID: 1000)
* **작업 디렉토리**: `/home/dev/workspace`

## 🛠️ 포함된 주요 패키지

* **시스템 도구**: `sudo`, `curl`, `wget`, `git`, `vim`, `tmux`, `zsh`
* **개발 도구**: `python3`, `pip`, `python3-venv`, `build-essential`
* **네트워크 도구**: `iputils-ping`, `net-tools`, `htop`, `psmisc`
* **기타**: Docker CLI, Node.js 및 npm (설치된 경우)([skia.googlesource.com][1])

## 🧑‍💻 사용자 정보

* **사용자명**: `dev`
* **홈 디렉토리**: `/home/dev`
* **작업 디렉토리**: `/home/dev/workspace`([Data Engineer Things][2])

## 🚀 사용 방법

### 1. 이미지 빌드

```bash
docker build -t mydocker .
```

### 2. 컨테이너 실행

```bash
docker run -it --rm \
  -v $(pwd):/home/dev/workspace \
  mydocker
```

현재 디렉토리를 컨테이너의 작업 디렉토리로 마운트하여, 로컬 파일을 컨테이너 내에서 바로 사용할 수 있습니다.


## 📬 문의

버그 신고나 문의사항은 [trydoit9@gmail.com](mailto:trydoit9@gmail.com)으로 연락주시기 바랍니다.
