<?php
    require_once('/include/common.inc.php');
    $topmenus = array(
            array('class' => 'show', 'icon_class' => 'icon-main', 'text' => 'Основное'),
            array('class' => 'hide', 'icon_class' => 'icon-html', 'text' => 'HTML'),
            array('class' => 'hide', 'icon_class' => 'icon-css', 'text' => 'CSS'),
            array('class' => 'hide', 'icon_class' => 'icon-site', 'text' => 'Сайт')
        );
    $submenus = array(
            array('href' => '/content', 'text' => 'Статьи'),
            array('class' => '/blog', 'text' => 'Блог'),
            array('class' => '/practical', 'text' => 'Практикум'),
            array('class' => '/test', 'text' => 'Тесты'),
            array('class' => 'http://htmlforum.ru', 'text' => 'Форум')
        );
    $students = array(
            array('name' => 'Alex', 'age' => 20),
            array('name' => 'Tanya', 'age' => 21)
        );
    $vars = array(
            'students' => $students,
            'topmenus' => $topmenus,
            'submenus' => $submenus
        );
    echo BuildPage('htmlbook.tpl', $vars);
