# How SPM works on CI
# To build a project with SPM, you do not need to start by calling the command to resolve dependencies because it is included in the build.

scheme="MyLibrary"
destination="platform=iOS Simulator,name=iPhone 11"

# This command simultaneously checks dependencies,
# downloads missing packages, and then starts the usual build of the application.
build() {
    xcodebuild build -scheme $scheme -destination "$destination"
}

build

