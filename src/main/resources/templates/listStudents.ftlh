<#import "parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    <div>
        <form method="post">
            <input type="text" name="name" placeholder="Имя" />
            <input type="text" name="address" placeholder="Адрес" />
            <input type="text" name="telephone" placeholder="Телефон" />
            <input type="text" name="email" placeholder="Электронная почта" />
            <input type="text" name="countingNum" placeholder="Номер зачетки">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список студентов:</div>

    <#list students as student>
        <div>
            <b>${student.id}</b>
            <span>${student.name}</span>
            <i>${student.address}</i>
            <i>${student.telephone}</i>
            <i>${student.email}</i>
            <i>${student.countingNum}</i>
        </div>
    <#else>
        Нет студентов
    </#list>

</@c.page>