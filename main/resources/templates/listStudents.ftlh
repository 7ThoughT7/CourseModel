<#import "parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    Список студентов

    <table>
        <thead>
        <tr>
            <th>Имя</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list students as student>
            <tr>
                <td>${student.name!}</td>
                <td><a href="/edit/studentEdit/${student.id}">Edit</a> </td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>