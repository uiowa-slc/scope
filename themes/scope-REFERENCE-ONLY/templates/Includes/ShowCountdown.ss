<% if $Date.isToday %>
	<div class="countdown">Today</div>
<% else_if $Date.inFuture %>
	<div class="countdown" data-countdown="$Date $Time"></div>
<% end_if %>