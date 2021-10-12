PLANTUML_VERSION='1.2021.12'

.PHONY: clean

image: .PHONY
	@docker build --build-arg PLANTUML_VERSION=$(PLANTUML_VERSION)		\
		 -t github.com/zhangli2946/images/render/plantuml:$(PLANTUML_VERSION)-openjdk8 .

