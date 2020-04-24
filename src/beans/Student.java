package beans;


public class Student {
	private String studentid;
	private String studentname;
	private String password;
	public Student(){}
	public Student(String studentid,String studentname,String password){
		this.studentid=studentid;
		this.studentname=studentname;
		this.password=password;
	}
	public String getStudentid(){
		return studentid;
	}
	public void setStudentid(String studentid){
		this.studentid=studentid;
	}
	public String getStudentname(){
		return studentname;
	}
	public void setStudentname(String studentname){
		this.studentname=studentname;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password=password;
	}
	@Override
	public String toString() {
		return "Student [studentid=" + studentid + ", studentname=" + studentname + ", password=" + password + "]";
	}
	
	
}
