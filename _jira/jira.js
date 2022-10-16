const { ipcRenderer } = require('electron');

ipcRenderer.on('open-url', (event, url) => {
	console.log('open-url', url);
	window.open(url);
});