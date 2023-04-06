#!/bin/zsh

pushd Example
xcodebuild -scheme Example test -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 14'
popd

