const { ipcRenderer } = require('electron');

// Force only one tab to be used
ipcRenderer.on('open-url', (event, url) => {
  const currentUrlDomain = new URL(window.location.href).hostname.replace('www.', '');
  // check if url without www has same domain as current_url without www
  if (new URL(url.replace('www.', '')).hostname === currentUrlDomain) {
    window.location.href = url;
  }
  else {
    window.open(url);
  }
});