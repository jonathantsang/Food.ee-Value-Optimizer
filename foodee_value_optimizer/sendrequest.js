var request = new XMLHttpRequest();

request.open("POST", "http://52.89.92.1:8080/", true);
request.setRequestHeader("Content-Type", "application/json;charset=UTF-8");

request.onreadystatechange = function () {
	console.log("state change");
	if(request.readyState === 4 && request.status === 200) {
		console.log(request);
		console.log(request.responseText);
	}
};

request.send(JSON.stringify({data: document.all[0].outerHTML}));
