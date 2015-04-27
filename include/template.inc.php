<?php
    function GetView($template, $vars)
    {
        $smarty = new Smarty();
        $smarty->setTemplateDir(TEMPLATE_DIR);
        $smarty->setCompileDir(TEMPLATE_C_DIR);
        $smarty->assign($vars);
        return $smarty->fetch($template);
    }

    function BuildPage($template, $vars)
    {
        $vars["topMenu"] = GetTopMenu();
        $vars["leftMenu"] = GetLeftMenu();
        $vars["subMenu"] = GetSubMenu();
        $header = GetView('header.tpl', $vars);
        $content = GetView($template, $vars);
        $footer = GetView('footer.tpl', $vars);
        return $header . $content . $footer;
    }
    
    function GetLeftMenu()
    {
        $arrayTags = array
        (
            array("name" => "Все теги", "link" => "#"),
            array("name" => "Валидация тегов", "link" => "#"),
            array("name" => htmlentities("<!-- -->"), "link" => "#"),
            array("name" => htmlentities("<!DOCTYPE>"), "link" => "#"),
            array("name" => htmlentities("<a>"), "link" => "#"),
            array("name" => htmlentities("<abbr>"), "link" => "#"),
            array("name" => htmlentities("<acronym>"), "link" => "#"),
            array("name" => htmlentities("<address>"), "link" => "#"),
            array("name" => htmlentities("<applet>"), "link" => "#"),
            array("name" => htmlentities("<area>"), "link" => "#"),
            array("name" => htmlentities("<article>"), "link" => "#"),
        );
  
        $arrayCss = array
        (
            array("name" => "Как пользоваться справочником", "link" => "#"),
            array("name" => "!important", "link" => "#"),
            array("name" => "-moz-border-bottom-colors", "link" => "#"),
            array("name" => "-moz-border-left-colors", "link" => "#"),
            array("name" => "-moz-border-right-colors", "link" => "#"),
            array("name" => "-moz-border-top-colors", "link" => "#"),
            array("name" => "-moz-linear-gradient", "link" => "#"),
            array("name" => "-moz-orient", "link" => "#"),
            array("name" => "-moz-radial-gradient", "link" => "#"),
            array("name" => "-moz-user-select", "link" => "#"),
            array("name" => "-ms-interpolation-mode", "link" => "#")
        );
    
        $leftMenu = array("Tags" => $arrayTags, "CSS" => $arrayCss);
        
        return $leftMenu;
    }
    
    function GetTopMenu()
    {
         $topmenus = array(
            array('class' => 'show', 'icon_class' => 'icon-main', 'link' => 'http://htmlbook.ru/#main', 'text' => 'Основное'),
            array('class' => 'hide', 'icon_class' => 'icon-html', 'link' => 'http://htmlbook.ru/#html', 'text' => 'HTML'),
            array('class' => 'hide', 'icon_class' => 'icon-css', 'link' => 'http://htmlbook.ru/#css', 'text' => 'CSS'),
            array('class' => 'hide', 'icon_class' => 'icon-site', 'link' => 'http://htmlbook.ru/#site', 'text' => 'Сайт')
        );
        
        return $topmenus;
    }
    
    function GetSubMenu()
    {
        $submenus = array(
            array('href' => '/content', 'text' => 'Статьи'),
            array('href' => '/blog', 'text' => 'Блог'),
            array('href' => '/practical', 'text' => 'Практикум'),
            array('href' => '/test', 'text' => 'Тесты'),
            array('href' => '', 'text' => 'Форум')
        );
        
        return $submenus;
    }