$.getScript("http://js.pusherapp.com/1.7/pusher.min.js", function(){
	var pusher = new Pusher('2a01cfc8c933f2d1c60a');
	var channel = pusher.subscribe('xenda-mrfox-twitter.com');
	
	channel.bind('create', function(data) {
		console.log(data);
	});
});
