<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
        <p><a href="/list/listCourses">К СПИСКУ КУРСОВ</a></p>
    </div>
    Уволить профессора
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Название курса</th>
            <th>Профессоры</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${course.title}</td>
            <td><#if course.professors??>
                    <#list course.professors as professor>
                        ${professor.toString()!}<#sep>,
                    </#list>
                <#else>
                    -
                </#if></td>
        </tr>
        </tbody>
    </table>

    <p></p>

    <table>
        <thead>
        <tr>
            <th>Имя</th>
            <th>Адрес</th>
            <th>Телефон</th>
            <th>Оплата</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list professors as professor>
            <form action="/delete/courseDeleteProfessor/${course.id}" method="post">
                <tr>
                    <td>${professor.name!}</td>
                    <td>${professor.address!}</td>
                    <td>${professor.telephone!}</td>
                    <td>${professor.payment!}</td>
                    <input type="hidden" value="${professor.id!}" name="professorId">
                    <td><button type="submit">Уволить</button></td>
                </tr>
            </form>
        </#list>
        </tbody>
    </table>
</@c.page>