![](https://images.unsplash.com/photo-1615503340293-27951e043eae?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)

# 🌟 Game Archive - 게임 커뮤니티 프로젝트 🌟

**팀명:** 팀 아카이브  
**프로젝트명:** Game Archive  

**Game Archive**는 게임 커뮤니티 사용자들이 더 쉽게 소통하고 정보를 공유할 수 있도록 돕는 플랫폼입니다.  
온프레미스 Kubernetes 클러스터로 시작해 클라우드 기반 **마이크로서비스 아키텍처(MSA)**를 구축하여,  

- ✅ **확장성**  
- ✅ **안정성**  
- ✅ **운영 효율성**  

을 모두 갖춘 플랫폼을 목표로 개발 중입니다.

---

## ✨ 인프라 아키텍처 (수정 필요)
![이미지 설명](https://i.imgur.com/xr6VjlO.png)

## 🖼 사이트맵
![](https://i.imgur.com/Mx0T06v.png)

---

## 🎯 프로젝트 목표

### 🚀 핵심 목표
1. **Kubernetes 클러스터 구축**  
2. **Flask 기반 마이크로서비스 애플리케이션 개발**  
3. **AWS 클라우드 전환** 및 **Terraform/Ansible**을 활용한 인프라 자동화  
4. **CI/CD 파이프라인 도입** (GitHub Actions + ArgoCD)  
5. **Prometheus**와 **Grafana**를 활용한 모니터링 및 대시보드 구축  
6. **게시판 CRUD 최적화** 및 **JWT 인증 체계 구현**  

---

## 📌 프로젝트 범위

### 🛠️ 프로젝트 준비 단계
- **기초 인프라 설계:**  
  온프레미스 환경에서 Kubernetes 클러스터 설계 및 구축.  
- **애플리케이션 프로토타입 개발:**  
  Flask와 MySQL 기반의 간단한 애플리케이션 설계.  
- **CI/CD 파이프라인 준비:**  
  GitHub Actions와 Docker Registry (Harbor)를 활용한 파이프라인 설계.  

---

## 🔍 기대 효과
- 🎉 **확장성 강화:**  
  유저 증가에도 안정적으로 대응 가능한 플랫폼.  
- 🎉 **운영 효율성 향상:**  
  클라우드 네이티브 환경 도입으로 유지보수와 배포 시간 단축.  
- 🎉 **안정성 확보:**  
  트래픽 부하 테스트와 모니터링으로 **서비스 중단 없는 운영 실현.**

---

## 🛠️ 사용 기술 스택

### 💻 개발 언어 및 프레임워크
- **Flask**
- **MySQL**

### 📦 컨테이너 기술
- **Docker**
- **Kubernetes**
- **Helm**

### 🔧 자동화 도구
- **Ansible**
- **Terraform**

### 🚀 CI/CD 도구
- **GitHub Actions**
- **ArgoCD**

### 📊 모니터링
- **Prometheus**
- **Grafana**

### 🔒 인증
- **JWT**

---

## 📜 주요 작업 진행 상황

| 작업 단계          | 진행 상황              |
|--------------------|-----------------------|
| 기초 인프라 설계    | ✅ 진행 중              |
| 애플리케이션 프로토타입 | ✅ 설계 완료 및 구현 중    |
| CI/CD 파이프라인 준비 | 🔄 진행 예정            |
| 클라우드 전환 준비   | 🔄 예정 단계 (Terraform 활용) |

**Game Archive**는 팀 아카이브의 열정과 기술력으로 지속적으로 발전해나갈 것입니다! 🚀

---

# 🚀 Git 사용 가이드

이 문서는 **Game Archive 프로젝트**에서 Git을 올바르게 사용하는 방법을 안내합니다. 모든 팀원은 이 지침을 따라 Git을 활용해주세요.

---

## **1️⃣ 프로젝트 클론하기**

프로젝트 작업을 시작하기 전에, GitHub에서 프로젝트를 자신의 로컬 환경으로 복사합니다.

1. **터미널을 열고 작업 디렉토리로 이동**
   ```bash
   cd /path/to/your/workspace

2. **GitHub에서 프로젝트 클론**
   ```bash
   git clone https://github.com/yurimheo/game-archive-flask-msa-k8s-Iac.git

3. **프로젝트 디렉토리로 이동**
   ```bash
   cd game-archive-flask-msa-k8s-Iac

## **2️⃣ 브랜치 생성 및 사용법**

### **💡 브랜치 네이밍 규칙**
- 각 팀원은 자신의 **이니셜**과 작업 내용을 활용한 브랜치를 사용합니다.
- 브랜치 이름 형식:  
  - **`feature/<이니셜>/<작업내용>`**
  - 예: `feature/hjw/login-function`

---

### **🌠 브랜치 생성 방법**

1. **현재 브랜치 확인**
   현재 작업 중인 브랜치를 확인합니다:
   ```bash
   git branch

2. **새 브랜치 생성**
   작업할 새로운 브랜치를 생성하고 해당 브랜치로 이동합니다:
   ```bash
   git checkout -b feature/<이니셜>/<작업내용>
   # 예: git checkout -b feature/hjw/login-function

3. **작업 후 변경 사항 커밋**
   작업한 내용을 저장소에 반영합니다:
   ```bash
   git add .
   git commit -m "작업 내용을 설명하는 커밋 메시지"
   # 예: git commit -m "Add login function for user authentication"

4. **원격 저장소로 브랜치 푸시**
   로컬에서 생성한 브랜치를 GitHub 원격 저장소에 업로드합니다:
   ```bash
   git push origin feature/<이니셜>/<작업내용>
   # 예: git push origin feature/hjw/login-function

---

## **➕ `develop` 브랜치 본인 브랜치로 옮기기**

작업 전 최신 코드를 유지하기 위해 `develop` 브랜치의 내용을 본인의 작업 브랜치로 가져오는 과정을 설명합니다.

1. **본인의 작업 브랜치에서 최신 develop 내용 가져오기**
   ```bash
   git pull origin develop
   # 1. 현재 브랜치(본인 브랜치)에서 develop 브랜치의 최신 내용을 가져옴
   # 2. 충돌이 발생하면 충돌 파일을 수정 후 커밋

2. **작업 완료 후 병합된 상태를 푸시**
   ```bash
   git push origin feature/<이니셜>/<작업내용>
   # 1. 본인 브랜치를 원격 저장소로 업데이트
   # 예시: git push origin feature/hjw/login-function

---
## **💥 VS Code에서 소스 제어 확인**
Git 명령어를 사용하지 않고, **Visual Studio Code**에서 Git 소스 제어 기능을 활용하여 브랜치를 병합하고 충돌을 해결하는 방법을 안내합니다.

---

#### **1️⃣ 소스 제어 탭 확인**
1. **VS Code 좌측 사이드바에서 소스 제어 아이콘 클릭**  
   - 아이콘 모양: 📁 옆에 있는 **소스 제어 아이콘** (Git 로고처럼 보임)
   - 현재 브랜치 이름을 확인할 수 있습니다.

2. **현재 브랜치 확인 및 변경**  
   - 왼쪽 하단의 **현재 브랜치 이름**을 클릭합니다.
   - 브랜치 목록이 나타나며, 다른 브랜치로 전환 가능합니다.

---

#### **2️⃣ develop 브랜치 병합**
1. **현재 본인 브랜치에서 최신 develop 내용 가져오기**
   - 소스 제어 탭에서 상단에 표시된 **Pull** 버튼 클릭.
   - 명령 팔레트를 통해 직접 실행:
     - `Ctrl + Shift + P` → "Git: Pull" 입력 → **origin/develop** 선택.

2. **충돌이 발생한 경우 VS Code에서 충돌 해결**
   - 충돌이 발생하면 **충돌 파일**에 표시됨:
     - **충돌난 파일 옆에 '!' 아이콘**이 나타남.
     - 해당 파일을 클릭하면 **충돌 내용**이 표시됨.
   - 충돌 해결 방법:
     - **Accept Current Change**: 현재 브랜치의 변경 사항을 유지.
     - **Accept Incoming Change**: `develop` 브랜치의 변경 사항을 유지.
     - **Accept Both Changes**: 두 변경 사항을 모두 반영.
     - 필요에 따라 직접 충돌 내용 수정.

3. **변경 사항 저장 및 커밋**
   - 충돌 파일을 수정한 뒤, **소스 제어 탭**에서 변경 파일을 선택하고 **커밋 메시지 입력** → **✔️ Commit** 버튼 클릭.

---

#### **3️⃣ 작업 완료 후 푸시**
1. 소스 제어 탭 상단에서 **푸시(Push)** 버튼 클릭.
2. 본인 브랜치가 최신 상태로 원격 저장소에 반영됩니다.

---

### **💡 추가 팁**
- **브랜치 변경하기:**
  - 하단 상태바에서 현재 브랜치를 클릭 → 브랜치 선택.
- **명령 팔레트를 활용:**
  - `Ctrl + Shift + P` (macOS: `Cmd + Shift + P`)를 눌러 필요한 명령을 검색하세요.
  - 예: `Git: Checkout to` → 브랜치 전환.
- **Pull, Push, Commit 버튼 활용:**
  - 소스 제어 탭에서 주요 Git 작업을 버튼 클릭만으로 처리할 수 있습니다.

