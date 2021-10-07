NAME := bind-demo
HOSTNAME := ns
PORT := 5553
CNTRL_PORT := 5953

.PHONY: all
all: run

.PHONY: build
build:
	docker build -t $(NAME) .

.PHONY: run
run: PUBLISH_LIST := -p 127.0.0.1:$(PORT):53/tcp -p 127.0.0.1:$(PORT):53/udp -p 127.0.0.1:$(CNTRL_PORT):953/tcp 
run: build
	docker run -it --name $(NAME) $(PUBLISH_LIST) --hostname $(HOSTNAME) $(NAME)

.PHONY: clean
clean: 
	docker container prune -f

