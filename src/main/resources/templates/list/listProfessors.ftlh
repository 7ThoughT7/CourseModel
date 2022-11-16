<#import "../parts/common.ftlh" as c>

<@c.page>
    <div>
        <p><a href="/main">НА ГЛАВНУЮ</a></p>
    </div>
    Список профессоров
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Имя профессора</th>
            <th>Ведет курсы</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list professors as professor>
            <tr>
                <td>${professor.name!}</td>
                <td><#if professor.courses??>
                        <#list professor.courses as course>
                            ${course.toString()!}<#sep>,
                        </#list>
                    <#else>
                        -
                    </#if></td>
                <td><a href="/edit/professorEdit/${professor.id}">Взять курс</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>