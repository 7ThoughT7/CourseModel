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

    <#list professors as professor>
        <div>
            <b>${professor.name}</b>
            <i>${professor.address}</i>
            <i>${professor.telephone}</i>
            <i>${professor.payment}</i>
        </div>
    <#else>
        Нет профессоров
    </#list>

</@c.page>