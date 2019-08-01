#!/bin/bash

set -ex

# Check formatting
cargo fmt --all -- --check

# Run tests
cargo test --package android-ndk-sys --lib --target=x86_64-unknown-linux-gnu

# The most we can do is make sure it compiles
cargo check --package android-ndk --target=arm-linux-androideabi
cargo check --package android-ndk --target=armv7-linux-androideabi
cargo check --package android-ndk --target=aarch64-linux-android
cargo check --package android-ndk --target=i686-linux-android
cargo check --package android-ndk --target=x86_64-linux-android
