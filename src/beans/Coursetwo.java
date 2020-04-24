package beans;

public class Coursetwo {

private String coursename;
private String courseteacher;
private String courseclass;
private String coursetime;
private String id;
public Coursetwo(){}
public Coursetwo(String id,String coursename,String courseteacher,String courseclass,String coursetime){
	this.id=id;
	this.coursename=coursename;
	this.courseteacher=courseteacher;
	this.courseclass=courseclass;
	this.coursetime=coursetime;
	}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getCoursename() {
	return coursename;
}
public void setCoursename(String coursename) {
	this.coursename = coursename;
}
public String getCourseteacher() {
	return courseteacher;
}
public void setCourseteacher(String courseteacher) {
	this.courseteacher = courseteacher;
}
public String getCourseclass() {
	return courseclass;
}
public void setCourseclass(String courseclass) {
	this.courseclass = courseclass;
}
public String getCoursetime() {
	return coursetime;
}
public void setCoursetime(String coursetime) {
	this.coursetime = coursetime;
}
@Override
public String toString() {
	return "Course2 [id=" + id + ", coursename=" + coursename + ", courseteacher=" + courseteacher + ", courseclass="
			+ courseclass + ", coursetime=" + coursetime + "]";
}

}