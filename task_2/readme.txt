Task 2: Data Manipulation in SQL — EdTechDB

Objective:
Practice core SQL operations to manipulate data in a real-world inspired EdTech database.

What I Learned

This task deepened my understanding of:
- Using `INSERT INTO` to add new data entries
- Handling missing values using `NULL` and `DEFAULT`
- Updating specific fields with `UPDATE ... WHERE`
- Removing entries safely with `DELETE ... WHERE`, considering foreign key constraints
- Resolving foreign key constraint issues by ordering DELETE operations carefully

Database Theme: EdTech Company

The schema simulates a basic educational platform with:
-  `Students`
-  `Teachers`
-  `Courses`
-  `Enrollments`

Each entity is linked with meaningful relationships. For example:
- Each course is taught by a teacher (`teacher_id` FK)
- Each enrollment links a student to a course

Tools Used

-  MySQL (Workbench & DB Fiddle)
-  VS Code with SQLTools Extension
-  GitHub for version control and documentation


