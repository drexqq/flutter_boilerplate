<h1 align="center">
  Flutter Boilerplate
</h1>

## :file_folder: Folder Structure

### Assets Folder

```
.
└── assets
    ├── env                                 -> 환경설정
    │   ├── .env
    ├── fonts                               -> 폰트
    ├── images                              -> 이미지
    └── translations                        -> 번역 파일
        ├── ko.json
        └── en.json
        └── ja.json
```

### Features Folder

`features`안의 구조는 각 기능별로 나누어서 폴더를 생성하여 사용

```
.
└── features                               -> 각 기능별로 폴더를 나누어서 관리
    └── [abc]                              -> 기능별 폴더
        ├── blocs                          -> APPLICATION LAYER
        │   ├── abc_bloc.dart
        │   ├── abc_event.dart
        │   └── abc_state.dart
        ├── models                         -> DOMAIN LAYER
        │   └── abc_model.dart
        ├── networking                     -> DATA LAYER
        │   └── x_repository.dart
        └── presentation                   -> PRESENTATION LAYER
            ├── pages
            │   └── abc_page.dart
            ├── widgets
```

### Services Folder

`services`안에는 database(shared_preference, flutter_secure_storage, etc...), di, http, router, sentry, observer, etc... 여러가지 third-party 서비스들의 종속성 주입 및 등록을 할 수 있도록 한다.

```
.
└── services
    ├── di                                    -> 종속성 주입을 위한 폴더
    │   ├── di.dart                           -> get_it, injectable을 사용하여 종속성 관리
    │   └── abc_module_di.dart                -> 사용할 서비스 종속성 주입
    └── [var]                                 -> 사용할 서비스 폴더를 생성
        └── var_service.dart                  -> 사용할 서비스 클래스 생성
```

### Theme Folder

```
.
└── theme
    └── app_color_scheme.dart                   -> 색상
    └── app_size_scheme.dart                    -> 크기들(텍스트, 위젯 등...)
    └── app_text_theme.dart                     -> 텍스트 테마
    └── app_theme.dart                          -> 앱 테마
```

### Utils Folder

```
.
└── utils
    ├── helpers                                 -> 각종 도우미 클래스
    │   ├── logging_helper.dart                 -> 로그
    │   └── permission_helper.dart              -> 권한
    ├── shortcuts                               -> 각종 자주 사용하는 값들
    │   └── abc_shortcuts.dart
    └── constants.dart                          -> 각종 상수
```
