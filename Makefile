.PHONY: sql convert

all: sql convert

sql:
	cd database && docker-compose down
	cd database && docker-compose up -d db && sleep 20

convert:
	cd ontop-scripts && ./convert.sh
