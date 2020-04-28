all:
	./install-jupyter-env

master:
	./install-jupyter-env --master

clean:
	rm -rf .oscar-jupyter oscar

.PHONY: all master clean
