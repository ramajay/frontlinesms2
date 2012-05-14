<meta name="layout" content="popup"/>
<r:script>
function initializePopup() {
	$('#help strong').parents('li').addClass('section');
	$('#help em').parents('li').addClass('sub-section');
	
	$("#help #index li a").click(goToSection);
	$("#help #file").delegate("a", "click", goToSection);
	$('div#index a:first').click();

}

function goToSection() {
	var section = $(this).attr('href');
	$("#help #index li").removeClass('selected');
	$(this).parent('li').addClass('selected');
	var new_url = url_root + "help/section";
	$.get(new_url, {helpSection: section}, function(data) {
		$('#file').contents().replaceWith($(data));
	});
	return false;
}
</r:script>
<div id="help">
	<div id="index">
		<fsms:render template="index"/>
	</div>
	<div id="file">
	</div>
</div>

