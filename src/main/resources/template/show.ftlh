<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Все товары</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        table { border-collapse: collapse; width: 80%; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
        th { background-color: #f0f0f0; }
        a { color: #0066cc; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<h1>Список товаров</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Название</th>
        <th>Описание</th>
        <th>Цена</th>
        <th>Количество</th>
        <th>Производитель</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list products as product>
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.price?string("0.00")}</td>
            <td>${product.quantity}</td>
            <td>${product.manufacturer}</td>
            <td>
                <a href="./showone?id=${product.id}">Редактировать</a>
            </td>
        </tr>
    </#list>
    </tbody>
</table>

<p><a href="./add">Добавить новый товар</a></p>
</body>
</html>