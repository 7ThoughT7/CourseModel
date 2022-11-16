<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>

    <div>
        <form method="post">
            <input type="text" name="name" placeholder="Имя" />
            <input type="text" name="address" placeholder="Адрес" />
            <input type="text" name="telephone" placeholder="Телефон" />
            <input type="text" name="payment" placeholder="Оплата">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список профессоров:</div>
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя</th>
            <th>Адрес</th>
            <th>Телефон</th>
            <th>Оплата</th>
        </tr>
        </thead>
        <p></p>
        <tbody>
        <#list professors as professor>
            <tr>
                <td><b>${professor.name}</b></td>
                <td><i>${professor.address}</i></td>
                <td><i>${professor.telephone}</i></td>
                <td><i>${professor.payment}</i></td>
            </tr>
        <#else>
            Нет профессоров
        </#list>
        </tbody>
    </table>
</@c.page>