# 🎓 Virtual Classroom (.NET Project)

A comprehensive desktop-based virtual learning platform built with the .NET Framework using C#. This project simulates a real-time virtual classroom environment, offering educators and students tools for remote learning, communication, and class management.

---

## 🚀 Features

- 🧑‍🏫 **Teacher Dashboard**
  - Schedule classes
  - Manage assignments and grades
  - Track student performance

- 🎓 **Student Panel**
  - Submit assignments
  - View attendance & progress

- 📁 **File Uploads & Downloads**
  - Share study material
  - Submit homework & projects

- 💬 **Chat System**
  - Real-time teacher-student interaction
  - Class announcements

- 📊 **Reports**
  - Attendance reports

 ## 🗄️ Database Setup (Beginner Friendly)

This project uses **SQL Server** for storing student, teacher, and course-related data.

We’ve provided a ready-to-use SQL script that helps you **create the database** and **insert sample data** without writing everything manually.

### 📦 Where is the script?

You'll find it inside the `DB_Scripts` folder

### 📥 How to Import This Script in SQL Server (SSMS):

1. **Open SQL Server Management Studio (SSMS)**

2. **Connect to your local server**

3. Right-click on the **Databases** section → choose `New Database...`
   - Name it: `VirtualClassroom` → Click OK

4. Once the database is created, click on it in the left panel

5. At the top, click `File` → `Open` → `File...`
   - Select the `VirtualClassroom.sql` file from your project

6. Click `Execute` (or press **F5**) to run the script

✔️ This will create all the tables (like Students, Teachers, Courses) and insert sample records for testing.

---

### 🧠 What the script contains:

- `CREATE TABLE` statements for:
  - Students
  - Teachers
  - Courses
  - Assignments
  - Attendance
- `INSERT INTO` statements with sample data
- `PRIMARY KEY`, `FOREIGN KEY` constraints for relationships
- Basic normalization for good database design

---

### 🧪 After Importing

Once done, your application can directly connect to this database using the connection string in the `.config` file.

---
