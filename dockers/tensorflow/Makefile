start:
	docker run -idt -v `pwd`/notebooks:/notebooks --name tensorflow -p 8888:8888 --env-file `pwd`/env.list tensorflow/tensorflow

stop:
	docker stop tensorflow

rm:
	docker rm -f tensorflow

restart:
	docker restart tensorflow

logs:
	docker logs -f tensorflow

ssh:
	docker exec -it tensorflow bash
