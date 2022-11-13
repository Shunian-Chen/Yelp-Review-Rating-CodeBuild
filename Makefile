install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt\
		pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116

format:
	black *.py

lint:
	pylint --output-format=colorized --disable=R,C,W1203,W1202,W1514 *.py
test:
	python test.py

all: install format lint test