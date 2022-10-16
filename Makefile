NATIVEFIER_APP_FOLDER = ~/Applications
CWD = $(shell pwd)

youtube:
	@cd $(NATIVEFIER_APP_FOLDER) && rm -rf YouTube-darwin-arm64
	@cd $(NATIVEFIER_APP_FOLDER) && \
		npx nativefier https://www.youtube.com \
		--name "YouTube" \
		--single-instance \
		--honest \
		--inject $(CWD)/_youtube/youtube.js \
		--inject $(CWD)/_youtube/youtube.css \
		--internal-urls ".*" \
		--fast-quit \
		--overwrite \
		--darwin-dark-mode-support \
		2>&1 | tail -n 1

jira:
	@cd $(NATIVEFIER_APP_FOLDER) && rm -rf JIRA-darwin-arm64
	@cd $(NATIVEFIER_APP_FOLDER) && \
		npx nativefier https://travelperk.atlassian.net/jira/software/c/projects/APP/boards/19 \
		--name "JIRA" \
		--single-instance \
		--honest \
		--fast-quit \
		--overwrite \
		--internal-urls "id.atlassian.com/login|safetysync.atlassian.net|.google.com.*" \
		--darwin-dark-mode-support \
		--inject $(CWD)/_jira/jira.js \
		2>&1 | tail -n 1