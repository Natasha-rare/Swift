class Student{
    
    let name: String
    let surname: String
    let age: Int
    let grade: Int
    
    
    init(name: String, surname: String, age: Int, grade: Int){
        self.name = name
        self.surname = surname
        self.age = age
        self.grade = grade
    }
    
    var student_info:String{
        let studentInfo = """
        Student is \(name) \(surname).
        His (Her) age is \(age) and he (she) is in the \(grade)-th grade.
        """
        return studentInfo
    }
    
}

class LitStudent: Student{
    let direction: String
    let classNumber: Int
    
    init(name: String, surname: String, age: Int, grade: Int, direction: String, classNumber: Int) {
        self.classNumber = classNumber
        self.direction = direction
        super.init(name: name, surname: surname, age: age, grade: grade)
    }
    override var student_info: String{
        let studentInfo = """
        Student is \(name) \(surname).
        His (Her) age is \(age) and he (she) is in the \(grade).\(classNumber).
        He (She) is \(direction)
        """
        return studentInfo
    }
}

let student = Student(name: "Tasha", surname: "Lis", age: 15, grade: 9)
print(student.student_info)

let programmist = LitStudent(name: "Nata", surname: "A", age: 15, grade: 9, direction: "programmist", classNumber: 5)
print(programmist.student_info)
