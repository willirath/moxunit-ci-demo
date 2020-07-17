# MOxUnit CI demo

![MOxUnit](https://github.com/willirath/moxunit-ci-demo/workflows/MOxUnit/badge.svg)

What is this?
- [src/](src/) contains Matlab source code and [tests/](tests/) contains tests written in a way that can be run with [MOxUnit](https://github.com/MOxUnit/MOxUnit/).  Both are taken from the [Matlab docs](https://de.mathworks.com/help/matlab/matlab_prog/write-simple-test-case-with-functions.html) but avoid the Matlab builtin testing to be compatible with Octave which can be used in automated tests without having to worry about licencing.
- [.github/workflows/moxunit.yaml](.github/workflows/moxunit.yaml) automates testing to be run on every push to the repository.
