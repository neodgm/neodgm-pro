# Neo둥근모 Pro

<img src="https://neodgm.dalgona.dev/assets/images/neodgm_pro_demo.png" width="672">

_위 이미지는 개발중인 글꼴을 사용하여 제작되었으며, 정식 공개 버전으로 작성한
텍스트는 이와 다르게 보일 수 있습니다._

**Neo둥근모 Pro**는 [Neo둥근모](https://github.com/Dalgona/neodgm)를 바탕으로
만들어진 가변폭 비트맵 글꼴입니다.

## 소개

"둥근모꼴"은 1990년대에 김중태 IT문화원 원장이 제작하고 퍼블릭 도메인으로 배포한
DOS용 비트맵 한글 글꼴이며, 특유의 미려한 글자 모양 덕분에 지금까지도 곳곳의
전광판 등에서 볼 수 있습니다. Neo둥근모는 이 비트맵 글꼴을 여러 환경에서 사용할
수 있도록 트루타입 형식으로 변환하고, 여기에 원본 글꼴에는 없는 기호들을
추가하여 만든 글꼴입니다.

Neo둥근모 Pro는 여기에서 더 나아가 DOS 시절 비트맵 글꼴의 특징인 8x16, 16x16
픽셀의 틀을 깨고, 각각의 글자에 어울리는 글자 폭과 상황에 따라 글자 사이의
간격을 보기 좋게 조정하는 커닝(kerning) 기능을 적용한 가변폭 글꼴로, 터미널
외의 모든 곳에서 자유롭게 사용할 수 있습니다.

## 내려받기

이 저장소에는 원본 비트맵 글꼴과 TTF 생성 도구의 소스만 포함되어 있습니다.
글꼴을 받으시려면 [Releases](https://github.com/Dalgona/neodgm-pro/releases)를
이용해 주세요.

## 직접 빌드하기

대부분의 경우에는 이미 빌드된 글꼴 파일을 다운로드 받아서 사용하는 것으로도
충분합니다. 소스 코드를 수정하고 글꼴 파일을 직접 빌드해 보고 싶은 분들은 아래
과정에 따라 주시기 바랍니다.

1. Neo둥근모 Pro의 소스는 Elixir 프로그래밍 언어로 작성되어 있습니다. [Elixir
  웹 사이트](https://elixir-lang.org)에서 여러분이 사용하고 있는 운영 체제에
  맞는 Elixir 버전을 설치하세요.

1. Git을 사용하여 이 저장소를 복제하세요.

    ```sh
    $ git clone https://github.com/Dalgona/neodgm-pro.git
    ```

1. 아래 명령을 입력하여 TTF 파일을 빌드하세요.

    ```sh
    $ mix deps.get

    $ MIX_ENV=prod mix build_font.pro
    ``` 

1. 현재 작업 디렉토리에 `neodgm_pro.ttf` 파일이 생성됩니다.

## 글꼴 사용 가이드라인

Neo둥근모를 일반적인 PC 모니터에 표시될 컨텐츠를 제작하는 데 사용하는 경우에는
아래 링크에서 설명하는 가이드라인에 최대한 따라 주어야 최상의 결과물을 얻을 수
있습니다.

https://neodgm.dalgona.dev/guides.html

## 문의

빌드한 글꼴 파일에 문제가 있는 경우, 글꼴 빌드 프로그램에 문제나 개선 사항이
있는 경우, 또는 우선적으로 추가되었으면 하는 문자나 기타 의견이 있는 경우에는
망설이지 말고 Issue를 제출해 주세요!

## 라이선스

Neo둥근모 Pro 글꼴 파일과 글꼴의 소스 코드는 SIL Open Font License 1.1 하에
배포됩니다. SIL Open Font License 1.1의 전체 내용은 `LICENSE.txt`에 저장되어
있습니다.
