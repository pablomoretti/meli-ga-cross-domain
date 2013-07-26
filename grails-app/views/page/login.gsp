<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
	</head>
	<body>
		<h1>Login</h1>
		
		
			<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				<a href="http://meli-ga.herokuapp.com/page/callback">Callback</a>
		  	</g:if>
		  	<g:else>
				<a href="http://test-meli-ga.herokuapp.com:8080/page/callback">Callback</a>
		  	</g:else>
		
		<script type="text/javascript">
		
			var _gaq = _gaq || [];

		  	<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				_gaq.push(['_setAccount', 'UA-42736032-1']);
		  	</g:if>
		  	<g:else>
		  		_gaq.push(['_setAccount', 'UA-11111111-1']);
		  	</g:else>

			  	_gaq.push(['_setDomainName', 'no-ip.biz']);
			  	_gaq.push(['_setAllowLinker', true]);
			  	_gaq.push(['_trackPageview']);


			  <g:if test="${!grails.util.Environment.isDevelopmentMode()}">
				var iframeUrl = 'http://meli-ga.herokuapp.com/page/iframe?parent_url=';
		  	 </g:if>
		  	 <g:else>
		  		var iframeUrl = 'http://test-meli-ga.herokuapp.com:8080/page/iframe?parent_url=';
		  	 </g:else>


				(function(w,d,u) {
					var g = d.createElement('iframe'),
				        s = d.getElementsByTagName('script')[0];
				    g.setAttribute("src", u);
				    g.frameBorder=0;
				    g.width="0px";
				    g.height="0px";
				    g.id="ga-cross-domain";
				    s.parentNode.insertBefore(g, s);
				}(window,document,iframeUrl + encodeURIComponent(window.location.href)));


				function listener(event){
					track(event.data);
				}

				if (window.addEventListener){
					addEventListener("message", listener, false);
				} else {
					attachEvent("onmessage", listener);
				}


			function track(href) {

				 var locaLocation = {};
				 
				 locaLocation.href = href;
				 locaLocation.origin = document.location.origin;
				 locaLocation.host = document.location.host;
				 locaLocation.hostname = document.location.hostname;
				 locaLocation.pathname = document.location.pathname;
				 locaLocation.port = document.location.port;
				 locaLocation.protocol = document.location.protocol;

				 var search = '';

				 if(href.indexOf('?') != -1){
					 search = href.substring(href.indexOf('?'));
				 }
				 
				 locaLocation.search = search;

				 locaLocation.toString = document.location.toString;

				 document.meliLocation = locaLocation;
				 
				 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				 
				<g:if test="${!grails.util.Environment.isDevelopmentMode()}">
					ga.src = 'http://meli-ga.herokuapp.com/ga.js';
		  	 	</g:if>
		  	 	<g:else>
		  			ga.src = 'http://test-meli-ga.herokuapp.com:8080/ga.js';
		  	 	</g:else>
				 
				 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);

			}
			
			 
			  
		</script>
		
	</body>
</html>
