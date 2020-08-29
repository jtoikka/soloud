// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "SoLoud",
  products: [
    .library(
      name: "SoLoud",
      type: .static,
      targets: ["SoLoudC"]
    )
  ],
  dependencies: [  
  ],
  targets: [
    .target(
      name: "SoLoudC",
      dependencies: [],
      path: ".",
      exclude: [
        "demos",
        "src/backend/alsa/soloud_alsa.cpp",
        "src/backend/coreaudio/soloud_coreaudio.cpp",
        "src/backend/jack/soloud_jack.cpp",
        "src/backend/nosound/soloud_nosound.cpp",
        "src/backend/null/soloud_null.cpp",
        "src/backend/openal/soloud_openal.cpp",
        "src/backend/openal/soloud_openal_dll.c",
        "src/backend/opensles/soloud_opensles.cpp",
        "src/backend/oss/soloud_oss.cpp",
        "src/backend/portaudio/soloud_portaudio.cpp",
        "src/backend/portaudio/soloud_portaudio_dll.c",
        "src/backend/sdl/soloud_sdl1.cpp",
        "src/backend/sdl/soloud_sdl1_dll.c",
        "src/backend/sdl/soloud_sdl2.cpp",
        "src/backend/sdl/soloud_sdl2_dll.c",
        "src/backend/sdl2_static/soloud_sdl2_static.cpp",
        "src/backend/sdl_static/soloud_sdl_static.cpp",
        "src/backend/vita_homebrew/soloud_vita_homebrew.cpp",
        "src/backend/wasapi/soloud_wasapi.cpp",
        "src/backend/winmm/soloud_winmm.cpp",
        "src/backend/xaudio2/soloud_xaudio2.cpp",
        "src/tools",
      ],
      cxxSettings: [CXXSetting.define("WITH_MINIAUDIO")]
    ),
  ]
)