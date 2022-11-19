<#import "../parts/common.ftlh" as c>

<@c.page>
    <table>
        <thead>
        <tr>
            <th width="150"><a href="/main">НА ГЛАВНУЮ</a></th>
            <th width="100"></th>
            <th width="100"><a href="/add/addStudents">Студенты</a></th>
            <th width="100"><a href="/add/addCourses">Курсы</a></th>
        </tr>
        </thead>
    </table>
    <p></p>
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
            <th align="left" width="150">Имя</th>
            <th align="left" width="150">Адрес</th>
            <th align="left" width="100">Телефон</th>
            <th align="left" width="100">Оплата</th>
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
    <p></p>
    <p><a href="/list/listProfessors">Редактировать</a></p>

</@c.page>