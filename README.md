# 01-database-sql

- 강의: 김영한의 실전 데이터베이스 입문 - 모든 IT인을 위한 SQL 첫걸음(SQL부터 차근차근)
  - SQL 실습 프로젝트 01

## MySQL Docker compose

- 실습을 위한 MySQL을 Docker 컨테이너로 띄웁니다.
- compose 파일을 `compose.yaml`로 만들면, compose 명령에 지정하는 파일 선택 옵션인 `-f 파일명.yaml`을 생략할 수 있습니다.

### 01. compose를 백그라운드로 실행하기

```bash
docker compose up -d
```

### 02. 이름이 `mysql`인 service 로그를 실시간 출력하기

```bash
# logs 뒤의 `-f`는 파일이 아니라 `follow` 단독 옵션 (뒤의 `mysql`과는 무관)
docker compose logs -f mysql
```

### 03. compose 종료하기

```bash
docker compose down
```

