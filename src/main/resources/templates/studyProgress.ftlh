<#import "parts/common.ftlh" as c>

<@c.page>
    <table>
        <thead>
        <tr>
            <th width="150"><a href="/main">НА ГЛАВНУЮ</a></th>
            <th width="100"></th>
            <th width="100"><a href="/add/addStudents">Студенты</a></th>
            <th width="100"><a href="/add/addCourses">Курсы</a></th>
            <th width="100"><a href="/add/addProfessors">Профессора</a></th>
        </tr>
        </thead>
    </table>
    <p></p>
    ${student.name!}
    <p></p>
    <table>
        <thead>
        <tr>
            <th>Название курса</th>
            <th>Оценки</th>
<#--            <th>Средний балл</th>-->
<#--            <th>Финальная отметка</th>-->
        </tr>
        </thead>
        <tbody>
        <#list courses as course>
            <tr>
                <td>${course.title!}</td>
                <td><#list student.passingCourses as passingCourse>
                        <#if student == passingCourse.getStudents() && course == passingCourse.getCourses()>
                            <#list passingCourse.grades as grade>
                                ${grade}<#sep>,
                            </#list>
                        </#if>
                    </#list>
                </td>
<#--                <td><a href="/edit/studentEdit/${student.id}">Записаться</a> </td>-->
<#--                <td><a href="/delete/studentDelete/${student.id}">Отписаться</a> </td>-->
<#--                <td><a href="/delete/studentDelete/${student.id}">Отписаться</a> </td>-->
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>