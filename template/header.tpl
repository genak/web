<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>htmlbook.ru | Для тех, кто делает сайты</title>
    <link href="css/styles.css" rel="stylesheet" media="all">
  </head>
  <body>
    <div class="header">
      <a href="http://htmlbook.ru/" rel="home"><img src="img/logo.png" alt="htmlbook.ru" class="logo" width="184" height="66"></a>
      <ul id="topmenu">
        {foreach from=$topMenu item=topmenu}
          <li class="{$topmenu.class|escape:html}"><a href="{$topmenu.link|escape:html}"><i class="{$topmenu.icon_class|escape:html}"></i><br>{$topmenu.text}</a></li>
        {/foreach}
      </ul>

      <div id="main" class="tile">
        <ul>
          {foreach from=$subMenu item=menu}
            <li><a href="http://htmlbook.ru/{$menu.href|escape:html}">{$menu.text}</a></li>
          {/foreach}
        </ul>
      </div>
      
      <form action="http://htmlbook.ru/search/" id="cse-search-box">
        <input type="text" name="as_q" id="q" autocomplete="off" placeholder="Поиск по сайту">
        <input type="image" src="img/find.png" alt="Найти" class="find">
      </form>
       
    </div>
    
    <div class="layout">
    
      <div class="aside">
        <div class="block" id="block-28">
          <div class="block_content">
          
            <form action="http://htmlbook.ru/sites/search/" id="filter">
              <input type="search" name="q" id="ac"  placeholder="Тег HTML или св-во CSS"><input type="image" src="http://htmlbook.ru/themes/hb/img/find.png" alt="Найти" class="find">
            </form>
            
          </div>
        </div>
      
        <div class="block" id="menu-menu-html">
          <h2 class="block_title">Теги HTML</h2>
          <div class="aside_list">
            <ul class="menu">
            {foreach from = $leftMenu.Tags item = tag}
              <li class="leaf">
                <a href="{$tag.link}" title="{$tag.name}">{$tag.name}</a>
              </li>
            {/foreach}
            </ul>
          </div>
        </div>
      
        <div class="block" id="menu-menu-css">
          <h2 class="block_title">Справочник CSS</h2>
      
          <div class="aside_list">
             <ul class="menu">
            {foreach from = $leftMenu.CSS item = tag}
              <li class="leaf">
                <a href="{$tag.link}" title="{$tag.name}">{$tag.name}</a>
              </li>
            {/foreach}
            </ul>
          </div>
        </div>
      </div>
      
      <div id="content">