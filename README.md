# Imagemagick cookbook

Installs imagemagick from source with libtiff 4.0.3

## Supported Platforms

Tested on Ubuntu 12.04

## Usage

### imagemagick::source

Include `imagemagick` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[imagemagick::source]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Lester Celestial (<lestercsp@sourcepad.com>)

```text
Copyright 2009-2014 SourcePad, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
