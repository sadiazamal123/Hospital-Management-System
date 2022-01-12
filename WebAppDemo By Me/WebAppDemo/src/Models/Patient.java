package Models;
public class Patient {
    int    Patient_id, pi_Password, Age,  Mobileno;
    String  Name,  Date_Of_Birth, Gender;

    public Patient (int Patient_id, String Name, int pi_Password, int Mobileno, int Age,  String Date_Of_Birth, String Gender) {
        this.Patient_id = Patient_id;
        this.Name = Name;
        this.pi_Password = pi_Password;
        this.Mobileno = Mobileno;
        this.Age = Age;
        this.Date_Of_Birth = Date_Of_Birth;
        this.Gender = Gender;

    }
    public Patient( String Name, String Date_Of_Birth, String Gender) {
        this.Name = Name;
        this.Date_Of_Birth= Date_Of_Birth;
        this.Gender = Gender;

    }

    public int getPatient_id() {
        return Patient_id;
    }
    public String getName() {
        return Name;
    }
    public int getpi_Password() {
        return pi_Password;
    }
    public int getMobileno() {
        return Mobileno;
    }
    public int getAge() {
        return Age;
    }
    public String getDate_Of_Birth() {
        return Date_Of_Birth;
    }
    public String getGender() {
        return Gender;
    }

}
