build: gen_appendix gen_plantuml compile_typst

install: install_fonts install_plantuml

compile_typst:
	# without interactive mode make doesn't know wsl's aliases, so typst.exe is a fallback for windows
	typst.exe compile main.typ --font-path ./assets/fonts
	@echo "Completed typst compilation"

gen_appendix:
	for f in ./appendix/*.pdf; do \
		mkdir "./generated/$${f%/*}" -p; \
		pdf2svg "$${f}" "./generated/$${f%.*}-p%d.svg" all; \
		done

gen_plantuml:
	mkdir -p ./generated/
	cp ./assets/**/*.puml ./generated/ --parents
	# cp ./assets/**/puml-*.svg ./generated/ --parents # Copies SVGs that are needed for some diagrams but are kept in the same folder so that they are visible in the preview of IDEs
	java -jar ./plantuml/plantuml.jar ./generated/**/*.puml -tsvg

install_fonts:
	@echo "Downloading Fonts..."
	mkdir -p ./assets/fonts/
	curl -L https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSerif-v2.013/NotoSerif-v2.013.zip > ./assets/fonts/noto-serif.zip
	curl -L https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSans-v2.013/NotoSans-v2.013.zip > ./assets/fonts/noto-sans.zip
	curl -L https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSansMono-v2.014/NotoSansMono-v2.014.zip > ./assets/fonts/noto-mono.zip
	@echo "Unpacking Fonts..."
	unzip -j ./assets/fonts/noto-serif.zip NotoSerif/hinted/ttf/*.* -d ./assets/fonts/NotoSerif
	unzip -j ./assets/fonts/noto-sans.zip NotoSans/hinted/ttf/*.* -d ./assets/fonts/NotoSans
	unzip -j ./assets/fonts/noto-mono.zip NotoSansMono/hinted/ttf/*.* -d ./assets/fonts/NotoSansMono
	rm ./assets/fonts/noto-serif.zip
	rm ./assets/fonts/noto-sans.zip
	rm ./assets/fonts/noto-mono.zip
	@echo "Completed Installing Fonts"

install_plantuml:
	@echo "Installing PlantUML..."
	mkdir -p ./plantuml/
	curl -L https://github.com/plantuml/plantuml/releases/download/v1.2024.3/plantuml-mit-1.2024.3.jar > ./plantuml/plantuml.jar
	@echo "Completed Installing PlantUML"