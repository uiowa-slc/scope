<% if $Date.isToday %>
	<div class="countdown">Today</div>
<% else_if $Date.inFuture %>
	<div class="countdown" data-countdown="$Date"></div>
<% end_if %>