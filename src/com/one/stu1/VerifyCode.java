package com.one.stu1;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

public class VerifyCode {
	private int w = 150; // 宽度
	private int h = 70; // 高度
	private Random r = new Random(); // 获得一个随机数对象
	// 定义有哪些字体
	private String[] fontNames = { "宋体", "华文楷体", "黑体", "微软雅黑", "楷体_GB2312" };

	// 定义有哪些验证码的随机字符
	private String codes = "23456789abcdefghjkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
	// 生成背景色
	private Color bgColor = new Color(250, 250, 250);
	// 生成的验证码文本
	private String text;
	// 生成随机颜色
	private Color randomColor() {
		int red = r.nextInt(150);
		int green = r.nextInt(150);
		int blue = r.nextInt(150);
		return new Color(red, green, blue);
	}
// 生成随机字体
		private Font randomFont() {
		int index = r.nextInt(fontNames.length);
		String fontName = fontNames[index]; // 字体名称
		int style = r.nextInt(4); // 字体样式(PLAIN=0,BOLD=1,ITALIC=2,BOLD|ITALIC=3)
		int size = r.nextInt(5) + 50; // 字体大小(50-54 之间)
		return new Font(fontName, style, size);
		}
// 画干扰线
		private void drawLine(BufferedImage image) {
			int num = 3; // 干扰线数量
			Graphics2D g2 = (Graphics2D) image.getGraphics(); // 得到图片画笔
	for (int i = 0; i < num; i++) {
		int x1 = r.nextInt(w); // 起点 x 坐标
		int y1 = r.nextInt(h); // 起点 y 坐标
		int x2 = r.nextInt(w); // 终点 x 坐标
		int y2 = r.nextInt(h); // 终点 y 坐标
	g2.setStroke(new BasicStroke(1.5F));// 设置线条特征，1.5F 为线的宽度
	g2.setColor(Color.BLUE); // 干扰线颜色
	g2.drawLine(x1, y1, x2, y2); // 画线
			}
		}
// 得到 codes 的长度内的随机数，并使用 charAt 取得随机数位置上的 codes 中的字符
		private char randomChar() {
			int index = r.nextInt(codes.length());
			return codes.charAt(index);
		}
// 创建一张验证码的图片
public BufferedImage createImage() {
		BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2 = (Graphics2D) image.getGraphics(); // 得到图片画笔
		g2.setColor(bgColor); // 给画笔设置颜色
		g2.fillRect(0, 0, w, h); // 使用画笔填充指定的矩形
		g2.setColor(Color.RED); // 给画笔设置颜色
		g2.drawRect(0, 0, w - 1, h - 1); // 使用画笔绘制指定的矩形
		StringBuilder sb = new StringBuilder();
		// 向图中画四个字符
		for (int i = 0; i < 4; i++) {
			String s = randomChar() + "";
			sb.append(s);
			float x = i * 1.0F * w / 4; // 计算字符 x 坐标位置
			g2.setFont(randomFont()); // 设置画笔字体
			g2.setColor(randomColor()); // 设置画笔颜色
			g2.drawString(s, x, h - 20); // 在图片上写字符
		}
			text = sb.toString();
			drawLine(image); // 绘制干扰线
			return image;// 返回图片
		}
// 得到验证码的文本，后面是用来和用户输入的验证码，检测用
public String getText() {
	return text;
}
// 定义输出的对象和输出文件流
public static void output(BufferedImage bi, OutputStream output) throws IOException {
	ImageIO.write(bi, "JPEG", output);
	}
}
