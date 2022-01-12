package Models;

public class Nurse {
    int Employee_id, Password, Salary;
    String UserName,  Dob, Gender, Address;


    public Nurse(int Employee_id, String UserName, int Password, int Salary, String Address,    String Dob, String Gender) {
        this.Employee_id = Employee_id;
        this.UserName = UserName;
        this.Password = Password;
        this.Salary = Salary;
        this.Address = Address;
        this.Dob = Dob;
        this.Gender = Gender;

    }
    public Nurse( String UserName, String Dob, String Gender, String Address) {
        this.UserName = UserName;
        this.Dob = Dob;
        this.Gender = Gender;
        this.Address = Address;
    }

    public int getEmployee_id() {
        return Employee_id;
    }
    public String getUserName() {
        return UserName;
    }
    public int getPassword() {
        return Password;
    }
    public int getSalary() {
        return Salary;
    }
    public String getAddress() { return Address; }
    public String getDob() {
        return Dob;
    }
    public String getGender() {
        return Gender;
    }



}
