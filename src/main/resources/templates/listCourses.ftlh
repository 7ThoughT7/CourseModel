<#import "parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    <div>
        <form method="post">
            <input type="text" name="title" placeholder="Название" />
            <input type="text" name="number" placeholder="Номер" />
            <input type="text" name="price" placeholder="Стоимость">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список курсов:</div>

    <#list courses as course>
        <div>
            <b>${course.id}</b>
            <span>${course.title}</span>
            <i>${course.number}</i>
            <i>${course.price}</i>
        </div>
    <#else>
        Нет курсов
    </#list>

</@c.page>