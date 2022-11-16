<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
        <p><a href="/list/listProfessors">К СПИСКУ ПРОФЕССОРОВ</a></p>
    </div>
    Курировать курс
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя профессора</th>
            <th>Курсы</th>
        </tr>
        </thead>
        <tbody>
        <td>${professor.name}</td>
        <td><#if professor.courses??>
                <#list professor.courses as course>
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
        </tr>
        </thead>
        <tbody>
        <#list courses as course>
            <form action="/edit/professorEdit/${professor.id}" method="post">
                <tr>
                    <td>${course.title!}</td>
                    <td>${course.number!}</td>
                    <td>${course.price!}</td>
                    <input type="hidden" value="${course.id!}" name="courseId">
                    <td><button type="submit">Взять курс</button></td>
                </tr>
            </form>
        </#list>
        </tbody>
    </table>
</@c.page>