function drew(ts){
	
	var note = $('#note'),
	//ts = new Date(2012, 10, 14),
	newYear = true;
	/*
	var showYear = ts.getFullYear();
	var showMonth = ts.getMonth();
	var showDay = ts.getDay();
	
	compareDate = new Date (showYear, showMonth, showDay);
	*/
	
	if((new Date()) > ts){
		// Notice the *1000 at the end - time must be in milliseconds
		//ts = (new Date()).getTime() + 10*24*60*60*1000;
		newYear = false;
	}
		
	$('#countdown').countdown({
		timestamp	: ts,
		callback	: function(days, hours, minutes, seconds){
			var message = "";
			
			
			
			if(newYear) {
			
			
			
			message += days + " day" + ( days==1 ? '':'s' ) + ", ";
			message += hours + " hour" + ( hours==1 ? '':'s' ) + ", ";
			message += minutes + " minute" + ( minutes==1 ? '':'s' ) + " and ";
			message += seconds + " second" + ( seconds==1 ? '':'s' ) + " <br />";

			message += "left until the show!";
			
			}
			else if (new Date() > ts){
			/*
				currentDate = new Date();
				
				var testYear = currentDate.getFullYear();
				var testMonth = currentDate.getMonth()+1;
				var testDay = currentDate.getDay();
				var testHours = currentDate.getHours();
												
				testHours = testHours + 6;

				currentDate = new Date(testYear, testMonth, testDay, testHours);
			*/	
				//if (currentDate > ts){
					message += "The show has started!";
				//}			
				//else {
					//message += "The show is over!";
				//}
			}
			note.html(message);
		}
	});
	
};
