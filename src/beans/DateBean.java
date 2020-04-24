package beans;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateBean {
	private String dateTime; // 日期和时间
	private String week; // 星期
	public String getDateTime() {
	// 获取当前时间
	Date currentDate = Calendar.getInstance().getTime();
	// 实例化 SimpleDateFormat
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy 年 MM 月 dd 日 HH 时 mm分 ss 秒");
	// 格式化日期时间
	dateTime = sdf.format(currentDate);
	return dateTime;
	}
	public String getWeek() {
	// 定义星期数组
	String[] weeks = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五",
	"星期六" };
	// 获取一星期的某天
	int index = Calendar.getInstance().get(Calendar.DAY_OF_WEEK);
	week = weeks[index - 1];
	return week;
	}
}
