<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    Список курсов
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Название курса</th>
            <th>Профессор</th>
            <th>Студенты</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list courses as course>
            <tr>
                <td>${course.title!}</td>
                <td><#if course.professors??>
                        <#list course.professors as professor>
                            ${professor.toString()!}<#sep>,
                        </#list>
                    <#else>
                        -
                    </#if></td>
                <td><#if course.students??>
                        <#list course.students as student>
                            ${student.toString()!}<#sep>,
                        </#list>
                    <#else>
                        -
                    </#if></td>
                <td><a href="/edit/courseEdit/${course.id}">Добавить</a> </td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>