<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
        <p><a href="/list/listCourses">К СПИСКУ КУРСОВ</a></p>
    </div>
    Запись студентов на курсы
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Название курса</th>
            <th>Студенты</th>
        </tr>
        </thead>
        <tbody>
        <td>${course.title}</td>
        <td><#if course.students??>
                <#list course.students as student>
                    ${student.toString()!}<#sep>,
                </#list>
            <#else>
                -
            </#if></td>
        </tbody>
    </table>
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя</th>
            <th>Адрес</th>
            <th>Телефон</th>
            <th>Эл.почта</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list students as student>
            <form action="/edit/courseEdit/${course.id}" method="post">
                <tr>
                    <td>${student.name!}</td>
                    <td>${student.address!}</td>
                    <td>${student.telephone!}</td>
                    <td>${student.email!}</td>
                    <input type="hidden" value="${student.id!}" name="studentId">
                    <td><button type="submit">Записать</button></td>
                </tr>
            </form>
        </#list>
        </tbody>
    </table>
</@c.page>