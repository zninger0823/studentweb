package beans;

import java.util.Date;

public class UserBean {
private int id;
private String name;
private String password;
private int sex;
private String email;
private Date birthday;
public UserBean() { // 无参构造方法
}
public UserBean(int id, String name, String password, int sex, String email,
Date birthday) {
this.id = id;
this.name = name;
this.password = password;
this.sex = sex;
this.email = email;
this.birthday = birthday;
}
public int getId() {
return id;
}
public void setId(int id) {
this.id = id;
}
public String getName() {
return name;
}
public void setName(String name) {
this.name = name;
}
public String getPassword() {
return password;
}
public void setPassword(String password) {
this.password = password;
}
public int getSex() {
return sex;
}
public void setSex(int sex) {
this.sex = sex;
}
public String getEmail() {
return email;
}
public void setEmail(String email) {
this.email = email;
}
public Date getBirthday() {
return birthday;
}
public void setBirthday(Date birthday) {
this.birthday = birthday;
}
@Override

public String toString() {
return "UserBean [id=" + id + ", name=" + name + ", password=" + password + ", sex=" + sex + ", email=" + email + ", birthday=" + birthday + "]";
}
}

