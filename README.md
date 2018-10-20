# Makeup 💅🏻

> No yeo man, no clone up.

Makefiles are beautiful, lets see:

```Makefile
# defaults
src  := .templates
dest := src
name := Test

help: Makefile
  @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

model: $(src) ## Generate model sources (use `name=Example`)
  @mkdir -p $(dest)/models
  @cp -r $(src)/model $(dest)/models/$(name)
```

TBH this is very helpful to quickly featuring things, sources are up to you! 😘
