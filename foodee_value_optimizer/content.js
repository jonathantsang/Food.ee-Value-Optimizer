// If you want to sendMessage from any popup or content script,
// use `chrome.runtime.sendMessage()`.

console.log("content.js");

chrome.tabs.executeScript(null, {
    file: "sendrequest.js"
  }, function(result) {
    // If you try and inject into an extensions page or the webstore/NTP you'll get an error
  	console.log("execute script");
  	console.log(result);
  });


// Send message to background:
// chrome.runtime.sendMessage({data: document.all[0].outerHTML}, function(response) {
//   // console.log(`message from background: ${JSON.stringify(response)}`);

//  	// $.ajax({
// 	 //    url: 'http://localhost:80/',
// 	 //    type: 'GET',
// 	 //    success: function(res) {
// 	 //        var contents = $(res.responseText);
// 	 //        console.log(contents)
// 	 //    }
//   //   });

//     // console.log(contents)

//     console.log(response)

// });