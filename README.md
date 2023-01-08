# flutter_boilerplate

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Folder Structure / Project Architecture

- lib
    - app
        - 앱의 기본 설정들에 대한 관리를 한다.
        - models
            - app_state.dart (freezed)
                - 앱의 초기 상태를 정의한다.
                - 초기화, 인증완료, 인증실패, 인터넷에러
            - token_model.dart (freezed, g)
                - 유저 토큰의 스키마를 정의한다.
        - providers
            - app_provider.dart
                - 초기 state를 설정하는 메소드(_init)를 정의한다.
                - 유저 토큰을 가져와 초기 상태를 업데이트한다.
            - token_provider.dart
                - 유저의 토큰을 관리한다.
                - 삭제, 저장, 패치
        - app_init.dart
            - app_provider를 사용하여 앱의 초기 state를 설정한다.
            - 초기 state는 app_state.dart에 정의되어 있다.
        - app.dart
            - MaterialApp을 build한다. router, theme, localization 등의 설정을 한다.
    - common
        - 중복되는 상수, 반복되어 사용되는 위젯들에 대한 정의를 한다.
        - constants
            - themes
                - 상수들에 대한 정의를 한다.
                - theme_color.dart
                    - 앱에서 사용되는 컬러들에 대한 정의를 한다.
                    - 피그마 참조
            - app_theme.dart
                - 모든 테마들을 export 해준다.
        - widgets
            - 위젯들에 대한 정의를 한다.
            - loading_widget.dart
                - 로딩시에 사용되는 위젯
    - gen
        - flutter_gen_runner를 통해 생성되는 파일들
        - assets.gen.dart
            - pubspec.yaml파일에 정의되어 있는 asset들에 대한 설정파일
    - routing
        - 앱의 모든 라우트를 등록 및 관리한다.
        - app_router.dart (auto_route_generator)
            - auto_route 파일
        - app_router.gr.dart
            - auto_route를 통해 자동 생성되는 파일
    - services
        - 앱에서 사용되는 주요 기능들에 대한 mapping
        - apis
            - interceptor
                - connectivity_request_retrier.dart
                    - connectivity_plus패키지들을 사용하여 wifi vs cellular에 대한 설정을 한다.
                - retry_interceptor.dart
                    - api요청 실패에 대한 재요청 interceptor
            - api_response.dart
                - api의 response값에 대한 mapping
        - exceptions
            - app_exception.dart (freezed)
                - app의 상태에 대한 exception을 정의한다.
                - 연결, 비인가, 에러메시지, 에러
        - logs
            - 로그에 대한 mapping
            - log_service.dart
                - logger_flutter_fork와 logger_fork를 mapping
            - provider_log_service.dart
                - provider에 대한 logging을 observer pattern으로 mapping하여 main.dart에 ProviderScope에 observers로 등록한다.
        - providers
            - 앱 전체에서 사용되거나 자주 사용되는 provider를 mapping
            - provider_api.dart
                - dio를 provider로 mapping하여 사용한다.
                - http method들을 mapping한다.
            - provider_platform.dart
                - platform을 provider로 등록한다.
    - src
        - 각각 feature에 대해서 폴더로 mapping
        - auth
            - 유저 인증 기능
            - apis
                - auth_api.dart
                    - 유저 인증 기능들에 대한 구현을 한다.
            - models
                - auth_state.dart (freezed)
                    - 유저 인증에 대한 상태를 정의한다.
                    - 초기, 로딩, 로그인, 로그아웃, 에러
            - pages
                - page_sign_in.dart
                    - 로그인 페이지 UI
                - page_sign_up.dart
                    - 회원가입 페이지 UI
            - providers
                - auth_provider.dart
                    - 유저 인증 기능에 대해 mapping한 provider
            - widgets
                - 기능에 대한 common widget을 작성한다.
        - home
            - pages
                - page_home.dart
                    - 홈페이지 UI
            - widgets
                - 기능에 대한 common widget을 작성한다.
        - routers
            - 모든 기능에 대한 라우터를 정의한다.
            - route_auth.dart
                - auth 기능에 대한 라우터 정의
            - route_home.dart
                - home 기능에 대한 라우터 정의
    - utils
        - 유틸리티에 대한 정의를 한다.
    - main.dart
        - runApp함수를 정의한다.
        - dotenv를 사용하여 환경변수를 가져온다.
