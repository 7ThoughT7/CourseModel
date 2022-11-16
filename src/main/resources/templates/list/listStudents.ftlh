<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    Список студентов
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя студента</th>
            <th>Проходит курсы</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list students as student>
            <tr>
                <td>${student.name!}</td>
                <td><#if student.courses??>
                        <#list student.courses as course>
                            ${course.toString()!}<#sep>,
                        </#list>
                    <#else>
                        -
                    </#if></td>
                <td><a href="/edit/studentEdit/${student.id}">Записаться</a> </td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>