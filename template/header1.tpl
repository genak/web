<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  </head>
  <body>
    <div class="main">
      <div class="header">
	<img src="../images/logo.png" alt="htmlbook.ru" class="logo"/>
    <nav>
    <ul id="topmenu">
  {foreach from=$topmenus item=topmenu}
    <li>{$topmenu.class|escape:html}, {$topmenu.text}</li>
  {/foreach}
</ul>
    
			<ul id="topmenu">
				<li class="show"><a href="#main"><i class="icon icon-main"></i><br>��������</a></li>
				<li class="hide"><a href="#html"><i class="icon icon-html"></i><br>HTML</a></li>
				<li class="hide"><a href="#css"><i class="icon icon-css"></i><br>CSS</a></li>
				<li class="hide"><a href="#site"><i class="icon icon-site"></i><br>����</a></li>
			</ul>

			<div id="main" class="tile show">
				<ul>
					<li><a href="/content" >������</a></li>
					<li><a href="/blog" >����</a></li>
					<li><a href="/practical" >���������</a></li>
					<li><a href="/test" >�����</a></li>
					<li><a href="http://htmlforum.ru" rel="nofollow">�����</a></li>
				</ul>
			</div>
			<div id="html" class="tile hide">
				<ul>
					<li><a href="/samhtml" >����������� HTML</a></li>
					<li><a href="/html" >���������� �� HTML</a></li>
					<li><a href="/xhtml" >XHTML</a></li>
					<li><a href="/html5" >HTML5</a></li>
				</ul>
			</div>
			<div id="css" class="tile hide">
				<ul>
					<li><a href="/samcss" >����������� CSS</a></li>
					<li><a href="/css" >���������� �� CSS</a></li>
					<li><a href="/faq" >������� CSS</a></li>
					<li><a href="/css3" >CSS3</a></li>
				</ul>
			</div>
			<div id="site" class="tile hide">
				<ul>
					<li><a href="/samlayout" >¸����� ���-�������</a></li>
					<li><a href="/layout" >������</a></li>
					<li><a href="/webserver" >���-������</a></li>
				</ul>
			</div>
			</nav>
      </div>
      <div class="content">


