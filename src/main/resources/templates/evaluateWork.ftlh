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
    <div>
        <p><a href="/list/listProfessors">К списку профессоров</a></p>
    </div>
    <p></p>

    <table>
        <thead>
        <tr>
            <th>Профессор</th>
            <th>Общее количество студентов</th>
            <th>Средняя успеваемость</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${professor.name}</td>
            <td>${professor.totalNumberOfStudents()}</td>
            <td>${professor.averagePerformance()!}</td>
        </tr>
        </tbody>
    </table>

    <p></p>
    Оценить работы студентов
    <table>
        <thead>
        <tr>
            <th>Номер</th>
            <th>Название курса</th>
            <th>Количество студентов</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list professor.getCourses() as course>
            <form action="/evaluateWork/${professor.id}" method="post">
                <tr>
                    <td>${course.number!}</td>
                    <td>${course.title!}</td>
                    <td>${course.amountStudents()}</td>
                    <td><a href="/studentGrades/${course.id}">Оценить</a></td>
                </tr>
            </form>
        </#list>
        </tbody>
    </table>
<#--    <p></p>-->
<#--    <table>-->
<#--        <thead>-->
<#--        <tr>-->
<#--            <th>Название</th>-->
<#--            <th>Номер</th>-->
<#--            <th>Цена</th>-->
<#--            <th></th>-->
<#--        </tr>-->
<#--        </thead>-->
<#--        <tbody>-->
<#--        <#list courses as course>-->
<#--            <form action="/edit/professorEdit/${professor.id}" method="post">-->
<#--                <tr>-->
<#--                    <td>${course.title!}</td>-->
<#--                    <td>${course.number!}</td>-->
<#--                    <td>${course.price!}</td>-->
<#--                    <input type="hidden" value="${course.id!}" name="courseId">-->
<#--                    <td><button type="submit">Взять курс</button></td>-->
<#--                </tr>-->
<#--            </form>-->
<#--        </#list>-->
<#--        </tbody>-->
<#--    </table>-->
</@c.page>