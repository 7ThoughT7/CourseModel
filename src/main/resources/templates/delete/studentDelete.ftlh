<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
        <p><a href="/list/listStudents">К СПИСКУ СТУДЕНТОВ</a></p>
    </div>
    Отписаться от курса
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя студента</th>
            <th>Курсы</th>
        </tr>
        </thead>
        <tbody>
        <td>${student.name}</td>
        <td><#if student.courses??>
                <#list student.courses as course>
                    ${course.toString()!}<#sep>,
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
            <th>Название</th>
            <th>Номер</th>
            <th>Цена</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list courses as course>
            <form action="/delete/studentDelete/${student.id}" method="post">
                <tr>
                    <td>${course.title!}</td>
                    <td>${course.number!}</td>
                    <td>${course.price!}</td>
                    <input type="hidden" value="${course.id!}" name="courseId">
                    <td><button type="submit">Отписаться</button></td>
                </tr>
            </form>
        </#list>
        </tbody>
    </table>
</@c.page>