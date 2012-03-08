<%@ page contentType="text/html;charset=UTF-8" %>
<div id="logo"></div>
<ul id="secondary-nav" class="standard-nav ${params.controller=='settings'?'selected':''}">
	<li>
		<g:link controller="settings">
			Settings
		</g:link>
	</li>
	<li id='settings-nav' class="nav ${params.controller=='help'?'selected':''}">
		<g:remoteLink controller="help" onSuccess="launchMediumPopup('Help', data, 'Done', cancel)">
			Help
		</g:remoteLink>
	</li>
</ul>
<g:javascript>
	function initializePopup() {}
</g:javascript>
