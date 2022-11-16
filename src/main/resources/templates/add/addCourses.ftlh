<#import "../parts/common.ftlh" as c>

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
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Название</th>
            <th>Номер</th>
            <th>Цена</th>
        </tr>
        </thead>
        <p></p>
        <tbody>
        <#list courses as course>
            <tr>
                <td><b>${course.title}</b></td>
                <td><i>${course.number}</i></td>
                <td><i>${course.price}</i></td>
            </tr>
        <#else>
            Нет курсов
        </#list>
        </tbody>
    </table>
</@c.page>