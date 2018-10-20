# defaults
src := .templates
dest := src
name := Test

help: Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

model: .templates ## Generate model sources from give `name`
	@mkdir -p $(dest)/models
	@cp -r $(src)/model $(dest)/models/$(name)
