package beans;


public class Score {
	private String  studentid;
	private String studentname;
	private String courseid;
	private String coursename;
	private String score;
	public Score(){}
	public Score(String studentid,String studentname,String courseid,String coursename,String score){
		this.studentid=studentid;
		this.studentname=studentname;
		this.courseid=courseid;
		this.coursename=coursename;
		this.score=score;
	}
	public String getStudentid(){
		return studentid;
	}
	public void setStudentid(String studentid){
		this.studentid=studentid;
	}
	public String getScore(){
		return score;
	}
	public void setScore(String score){
		this.score=score;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getCourseid() {
		return courseid;
	}
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	@Override
	public String toString() {
		return "Score [studentid=" + studentid + ", studentname=" + studentname + ", courseid=" + courseid
				+ ", coursename=" + coursename + ", score=" + score + "]";
	}
	
}
