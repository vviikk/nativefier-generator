NATIVEFIER_APP_FOLDER = ~/Applications
CWD = $(shell pwd)

youtube:
	@cd $(NATIVEFIER_APP_FOLDER) && rm -rf YouTube\ Native-darwin-arm64
	@cd $(NATIVEFIER_APP_FOLDER) && \
		npx nativefier https://www.youtube.com \
		--name "YouTube Native" \
		--single-instance \
		--honest \
		--inject $(CWD)/_youtube/youtube.js \
		--inject $(CWD)/_youtube/youtube.css \
		--internal-urls ".*" \
		--fast-quit \
		--overwrite \
		--darwin-dark-mode-support \
		2>&1 | tail -n 1