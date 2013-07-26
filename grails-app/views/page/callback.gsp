<!DOCTYPE html>
<html>
	<head>
		<title>Callback</title>
	</head>
	<body>
		<h1>Callback</h1>
		
		<script type="text/javascript">
		
			var _gaq = _gaq || [];

		  	<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				_gaq.push(['_setAccount', 'UA-42736032-1']);
		  	</g:if>
		  	<g:else>
		  		_gaq.push(['_setAccount', 'UA-11111111-1']);
		  	</g:else>

			  	_gaq.push(['_setDomainName', 'herokuapp.com']);
			  	_gaq.push(['_setAllowLinker', true]);
			  	_gaq.push(['_trackPageview']);
			  		
			  (function() {
			    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			  })();
			  

		</script>
	</body>
</html>
