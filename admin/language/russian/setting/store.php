<?php
// Heading
$_['heading_title']                = 'Управление магазинами';

// Text
$_['text_success']                 = 'Магазины обновлены!';
$_['text_items']                   = 'Items';
$_['text_tax']                     = 'Налоги';
$_['text_account']                 = 'Account';
$_['text_checkout']                = 'Оформление заказа';
$_['text_stock']                   = 'Кол-во на складе';
$_['text_image_manager']           = 'Менеджер изображений';
$_['text_browse']                  = 'Просмотр файлов';
$_['text_clear']                   = 'Очистить изображение';
$_['text_shipping']                = 'Адрес доставки';
$_['text_payment']                 = 'Платёжный адрес';

// Column
$_['column_name']                  = 'Название магазина';
$_['column_url']                   = 'URL магазина';
$_['column_action']                = 'Действие';

// Entry
$_['entry_url']                    = 'URL магазина:Включая полный URL к магазину. Добавьте \'/\' в конце. Например: http://wwww.yourdomain.com/path/';
$_['entry_ssl']                    = 'SSL URL:SSL URL to your store. Make sure to add \'/\' at the end. Example: http://www.yourdomain.com/path/Don\'t use directories to create a new store. You should always point another domain or sub domain to your hosting.';
$_['entry_name']                   = 'Название магазина:';
$_['entry_owner']                  = 'Владелец магазина:';
$_['entry_address']                = 'Адрес:';
$_['entry_email']                  = 'E-Mail:';
$_['entry_telephone']              = 'Телефон:';
$_['entry_fax']                    = 'Факс:';
$_['entry_title']                  = 'Title:';
$_['entry_meta_description']       = 'Мета-тег Description:';
$_['entry_layout']                 = 'Страница по умолчанию:';
$_['entry_template']               = 'Шаблон:';
$_['entry_country']                = 'Страна:';
$_['entry_zone']                   = 'Регион / Область:';
$_['entry_language']               = 'Язык:';
$_['entry_currency']               = 'Валюта:';
$_['entry_catalog_limit']          = 'Элементов на страницу (Каталог):Определяет количество элементов, показываемых на одной странице в каталоге (товары, категории и т.д.)';
$_['entry_tax']                    = 'Отображать цены с налогом:';
$_['entry_tax_default']            = 'Использовать налоговый адрес магазина:Использовать адрес магазина для вычисления налогов если пользователь не залогинен. Вы можете выбрать использование адреса магазина в качестве адреса доставки или платежа покупателя.';
$_['entry_tax_customer']           = 'Использовать налоговый адрес покупателя:Использовать дефолтный адрес покупателя, когда они залогинены, для подсчёта налогов. Вы можете выбрать использование выбранного по умолчанию адреса покупателя для адреса доставки или платежа покупателя.';
$_['entry_customer_group']         = 'Группа покупателей:Группа покупателей по умолчанию.';
$_['entry_customer_group_display'] = 'Показывать группы покупателей:Показывать группы покупателей, которые новые покупатели могут выбрать при регистрации, такие как Оптовые покупатели или Бизнес-партнёры.';
$_['entry_customer_price']         = 'Требуется логин для просмотра цен:Показывать цены только зарегистрированнным покупателям.';
$_['entry_account']                = 'Подтверждение при регистрации:Требовать подтверждение согласия с правилами при регистрации аккаунта.';
$_['entry_cart_weight']            = 'Показывать вес на странице корзины:';
$_['entry_guest_checkout']         = 'Оформление заказа без регистрации:Позволить покупателям оформлять заказы без регистрации Личного кабинета. Эта функция не будет доступна, если в корзине будут загружаемые в виде файла товары.';
$_['entry_checkout']               = 'Подтверждение при заказе:Требовать подтверждение согласия с правилами при оформлении заказа.';
$_['entry_order_status']           = 'Статус заказа:Статус заказа по умолчанию.';
$_['entry_stock_display']          = 'Показывать остаток на складе:Показывать остаток товаров на складе на странице товара.';
$_['entry_stock_checkout']         = 'Заказ при нехватке на складе:Разрешить покупателям оформлять заказ, если заказываемых товаров на данный момент нет на складе.';
$_['entry_logo']                   = 'Логотип:';
$_['entry_icon']                   = 'Иконка:';
$_['entry_image_category']         = 'Размер изображений категории:';
$_['entry_image_thumb']            = 'Размер большого изображения товара:';
$_['entry_image_popup']            = 'Размер всплывающего изображения товара:';
$_['entry_image_product']          = 'Размер изображений списка товаров:';
$_['entry_image_additional']       = 'Размер дополнительных изображений товаров:';
$_['entry_image_related']          = 'Размер изображений аналогичных товаров:';
$_['entry_image_compare']          = 'Размер изображений при сравнении:';
$_['entry_image_wishlist']         = 'Размер изображений в заметках:';
$_['entry_image_cart']             = 'Размер изображений товаров в корзине:';
$_['entry_secure']                 = 'Использовать SSL:Для использования SSL убедитесь что Ваш хостинг поддерживает SSL сертификат и пропишите SSL адреса в файле конфигурации.';

// Error
$_['error_warning']                = 'Внимательно проверьте форму на ошибки!';
$_['error_permission']             = 'У Вас нет прав для управления магазинами!';
$_['error_name']                   = 'Название магазина должно быть от 3 до 32 символов!';
$_['error_owner']                  = 'Владелец магазина должен быть от 3 до 64 символов!';
$_['error_address']                = 'Адрес магазина должен быть от 10 до 256 символов!';
$_['error_email']                  = 'E-Mail адрес введен неверно!';
$_['error_telephone']              = 'Телефон магазина должен быть от 3 до 32 символов!';
$_['error_url']                    = 'Необходим URL магазина!';
$_['error_title']                  = 'Заголовок магазина должен быть от 3 до 32 символов!';
$_['error_limit']                  = 'Не введены лимиты!';
$_['error_customer_group_display'] = 'Вы должны включить группу пользователей по умолчанию, если собираетесь использовать эту опцию!';
$_['error_image_thumb']            = 'Необходимо установить размер большого изображения товара!';
$_['error_image_popup']            = 'Необходимо установить размер всплывающего изображения товара!';
$_['error_image_product']          = 'Необходимо установить размер изображения списка товаров!';
$_['error_image_category']         = 'Необходимо установить размер изображения списка категорий!';
$_['error_image_additional']       = 'Необходимо установить размер дополнительных изображений товаров!';
$_['error_image_related']          = 'Необходимо установить размер изображения аналогичных товаров!';
$_['error_image_compare']          = 'Необходимо установить размер изображений при сравнении!';
$_['error_image_wishlist']         = 'Необходимо установить размер изображений в изобрадениях!';
$_['error_image_cart']             = 'Необходимо установить размер изображений товаров в корзине!';
$_['error_default']                = 'Нельзя удалить основной магазин!';
$_['error_store']                  = 'Этот магазин не может быть удален, поскольку он прикреплен к %s заказам!';
?>