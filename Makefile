.app.done: Dockerfile.app .base.done
	docker build -f Dockerfile.app . -t my-app
	touch .app.done

.base.done: Dockerfile GreenLab.crt GreenLab-key.pem greenlab.repo
	docker build . -t my-base
	touch .base.done

all: .app.done

GreenLab.crt: GreenLab-key-cert.pem
	openssl x509 -text -in $< > $@

GreenLab-key.pem: GreenLab-key-cert.pem
	openssl pkey -in $< -out $@

clean:
	rm -f .app.done .base.done *~ *.crt GreenLab-key.pem


