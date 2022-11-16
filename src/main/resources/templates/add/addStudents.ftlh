<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    <p></p>
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
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя</th>
            <th>Адрес</th>
            <th>Телефон</th>
            <th>Email</th>
            <th>Номер зачетки</th>
        </tr>
        </thead>
        <p></p>
        <tbody>
        <#list students as student>
            <tr>
                <td><b>${student.name}</b></td>
                <td><i>${student.address}</i></td>
                <td><i>${student.telephone}</i></td>
                <td><i>${student.email}</i></td>
                <td><i>${student.countingNum}</i></td>
            </tr>
        <#else>
            Нет студентов
        </#list>
        </tbody>
    </table>


</@c.page>