/*****************************************************************
 * onMessage from the extension or tab (a content script)
 *****************************************************************/
chrome.runtime.onMessage.addListener(
  function(request, sender, sendResponse) {
    console.log("listen from background");

    console.log(request, sender);

    sendResponse({data: document.all[0].outerHTML});

    // Note: Returning true is required here!
    //  ref: http://stackoverflow.com/questions/20077487/chrome-extension-message-passing-response-not-sent
    return true; 
  });

// inject code to send th html?