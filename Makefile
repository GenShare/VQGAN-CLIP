setup:
	set -e ;\
	python3 -m venv .venv ;\
	. .venv/bin/activate ;\
	pip install -r requirements/torch.txt -f https://download.pytorch.org/whl/torch_stable.html ;\
	pip install -r requirements/default.txt ;\
	git clone 'https://github.com/openai/CLIP' ;\
	git clone 'https://github.com/CompVis/taming-transformers' ;\
	mkdir checkpoints ;\
	curl -L -o checkpoints/vqgan_imagenet_f16_16384.yaml -C - 'https://heibox.uni-heidelberg.de/d/a7530b09fed84f80a887/files/?p=%2Fconfigs%2Fmodel.yaml&dl=1' ;\
	curl -L -o checkpoints/vqgan_imagenet_f16_16384.ckpt -C - 'https://heibox.uni-heidelberg.de/d/a7530b09fed84f80a887/files/?p=%2Fckpts%2Flast.ckpt&dl=1' ;\
	deactivate ;\