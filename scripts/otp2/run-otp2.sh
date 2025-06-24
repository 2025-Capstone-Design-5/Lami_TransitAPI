#!/usr/bin/env bash
# OTP 2.7.0 실행 스크립트 (Contraction Hierarchies로 빌드된 그래프를 쓰고 병렬 처리)
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
project_root="$(cd "$script_dir/../.." && pwd)"

java \
  -server \
  -Xms12G -Xmx12G \
  -jar "$project_root/otp-shaded-2.7.0.jar" \
  --load "$project_root/data" \
  --serve 