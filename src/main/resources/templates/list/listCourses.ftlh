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
            <th></th>
            <th></th>
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
                <td><a href="/edit/courseEditStudent/${course.id}">Добавить студента</a> </td>
                <td><a href="/delete/courseDeleteStudent/${course.id}">Удалить студента</a> </td>
                <td><a href="/edit/courseEditProfessor/${course.id}">Добавить профессора</a> </td>
                <td><a href="/delete/courseDeleteProfessor/${course.id}">Удалить профессора</a> </td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>