<!DOCTYPE html>
<html>
  <head>
    <meta name="generator"
    content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
    <title></title>
  </head>
  <body>
    <div class="main">
      <div class="header">
        <img src="../img/logo.png" alt="htmlbook.ru" class="logo" />
        <nav>
          <ul id="topmenu">
            {foreach from=$topmenus item=topmenu}
              <li class={$topmenu.class|escape:html}><i class={$topmenu.icon_class}></i><br>{$topmenu.text|escape:html}</li>
            {/foreach}
          </ul>
          <div id="main" class="tile show">
            <ul>
              {foreach from=$submenus item=submenu}
              <li>
                <a href="{$submenu.href|escape:html}">{$submenu.text|escape:html}</a>
              </li>
              {/foreach}
            </ul>
          </div>
        </nav>
      </div>
      <div class="content">