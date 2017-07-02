test:
	R -e 'library(testthat); test_dir("tests/.")'

docker-build:
	docker build -t barter-market-pricing .

docker-run:
	docker run -p 8787:8787 --rm barter-market-pricing
