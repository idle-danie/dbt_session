# dbt_session

## 사용 버전
- Python: 3.12.x
- Dbt: 1.8.x

## 설치 및 설정

### 1. 가상 환경 설정
프로젝트의 의존성을 격리하기 위해 가상 환경을 설정합니다.
```bash
python3 -m venv venv
source venv/bin/activate
```
### 2. dbt-core 및 Redshift connector 설치
```bash
pip3 install dbt-redshift
```

### 3. dbt 실행
모델을 실행하여 뷰 또는 테이블을 생성합니다.
```bash
dbt run
```

### 4. dbt 테스트
테스트를 실행하여 generic & custom으로 설정한 데이터 품질을 체크합니다.
```bash
dbt test
```

## Guideline
- [Dbt 공식문서](https://docs.getdbt.com/)