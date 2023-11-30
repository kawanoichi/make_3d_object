help:
	@echo 学習を行う
	@echo " $$ make train"
	@echo 学習済みモデルを使用して画像から点群予測を行う
	@echo " $$ make predict"
	@echo 拡張子の変更
	@echo " $$ make convert"
	@echo tensorflowのgpu認識のチェックを行う
	@echo " $$ make check tensor"
	@echo pytorchのgpu認識のチェックを行う
	@echo " $$ make check torch"

format:
	poetry run python3 -m autopep8 -i -r src/

predict:
	python3 predict_point_shapenet.py

# ソースコード実行
surface_run:
	 poetry run python3 src/make_surface.py

