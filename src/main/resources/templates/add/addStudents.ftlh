<#import "../parts/common.ftlh" as c>

<@c.page>
    <table>
        <thead>
        <tr>
            <th width="150"><a href="/main">НА ГЛАВНУЮ</a></th>
            <th width="100"></th>
            <th width="100"><a href="/add/addCourses">Курсы</a></th>
            <th width="100"><a href="/add/addProfessors">Профессора</a></th>
        </tr>
        </thead>
    </table>

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
            <th align="left" width="150">Имя</th>
            <th align="left" width="150">Адрес</th>
            <th align="left" width="100">Телефон</th>
            <th align="left" width="100">Email</th>
            <th align="left" width="50">Номер зачетки</th>
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
    <p></p>
    <p><a href="/list/listStudents">Редактировать</a></p>

</@c.page>