# Docker - 응용 프로그램을 실행시키기 위한 요소들을 컨테이너라는 요소로 묶어 가상화 하는 툴
#
#
## 1. Docker 작동 방식
  Dockerfile -[docker build <옵션>]-> image -[docker run <옵션>]-> container
#  
  1) Dockerfile
    : 하나의 프로그램을 실행시키기 위한 일련의 과정들을 기록하고 실행 할 수 있는 일종의 스크립트
#    
  2) docker build <옵션>
    : Dockerfile을 이미지로 만들기 위한 명령어
#   
  3) image
    : 서비스 운영에 필요한 서버 프로그램, 소스코드, 컴파일 된 실행 파일을 묶은 형태
#  
  4) docker run <옵션>
    : image를 컨테이너로 실행시키기 위한 명령어
#    
  5) container
    : image를 실행한 상태
    : 격리된 공간에서 프로세스가 동작하는 기술
#    
## 2. Dockerfile 명령어
  1) FROM : base image를 지정
    >>># FROM ubuntu:18.04
  2) RUN : Shell script 또는 명령을 실행
    >>># RUN apt-get install net-tools
  3) WORKDIR : 'RUN', 'CMD', 'ENTRYPOINT' 명령이 실행될 작업 디렉터리 지정
    >>># WORKDIR /test
  4) ADD : 현재 디렉터리에 있는 파일들을 내부 디렉터리에 추가
    >>># WORKDIR <호스트OS 파일 경로> <Docker 컨테이너 안에서의 경로>
  5) EXPOSE : 호스트와 연결할 포트 번호 설정
    >>># EXPOSE 80
  6) ENV / ARG : 환경 변수 설정
    >>: ENV = Dockerfile 또는 컨테이너 안에서 환경 변수로 사용 가능
    >>: ARG = Dockerfile에서만 사용 가능
  7) CMD / ENTRYPOINT : 컨테이너가 무슨 일을 하는지 결정하는 최종 단계를 정의하는 명령
    >>: ENTRYPOINT = 컨테이너가 시작될 때 호출될 명령어를 정의
    >>: CMD = ENTRYPOINT에 전잘되는 인자를 정의
 #
 ## 3. Docker build -t <이미지 이름>:<버전>
  : -t 옵션을 이용하여 이미지 이름 지정 및 버전 관리
 #
 ## 4. docker run <옵션> <이미지 이름>:<버전>
  : docker run을 이용하여 컨테이너를 생성하기 때문에 run의 옵션을 상황에 따라 잘 사용해주는 게 
