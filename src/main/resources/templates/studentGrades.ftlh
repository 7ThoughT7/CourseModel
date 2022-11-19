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
    <p>${course.title}</p>
    <table>
        <thead>
        <tr>
            <th>Номер зачетки</th>
            <th>Студент</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list students as student>
            <form action="/studentGrades/${student.id}" method="post">
                <tr>
                    <td>${student.countingNum!}</td>
                    <td>${student.name!}</td>
                    <td>
                        <form method="post">
                            <input type="text" name="1" placeholder="Оценка" />
                            <input type="text" name="1" placeholder="Оценка" />
                            <input type="text" name="1" placeholder="Оценка" />
                            <input type="text" name="1" placeholder="Оценка" />
                            <input type="text" name="1" placeholder="Оценка" />
                            <input type="hidden" value="${course.id!}" name="courseId">
                            <button type="submit">Добавить</button>
                        </form>
                    </td>
                </tr>
            </form>
        </#list>
        </tbody>
    </table>
</@c.page>