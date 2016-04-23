package me.daoke.roadrank.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/validCode")
public class ValidCodeController {
	public static final int WIDTH = 120;// 生成的图片的宽度
	public static final int HEIGHT = 30;// 生成的图片的高度

	//@Value("#{propertiesReader[propertiesName]}")

	@Value("${JDBC.Driver.app_MCade}")
	private String checkLogin;
	
    @Value("#{apiConfig[saveFile]}")
    private String saveFile;
	
	
	
	@RequestMapping("index")
	public String index(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println(checkLogin);
		System.out.println(saveFile);
		// 1.在内存中创建一张图片
		BufferedImage bi = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);

		// 2.得到图片
		Graphics g = bi.getGraphics();
		// 3.设置图片的背影色
		setBackGround(g);
		// 4.设置图片的边框
		setBorder(g);
		// 5.在图片上画干扰线
		drawRandomLine(g);
		String random = drawRandomNum((Graphics2D) g, "nl");// 生成数字和字母组合的验证码图片
		// 7.将随机数存在session中
		request.getSession().setAttribute("checkcode", random);
		// 8.设置响应头通知浏览器以图片的形式打开
		response.setContentType("image/jpeg");// 等同于response.setHeader("Content-Type",
												// "image/jpeg");
		// 9.设置响应头控制浏览器不要缓存
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// 10.将图片写给浏览器
		ImageIO.write(bi, "png", response.getOutputStream());
		return null;
	}

	/**
	 * 设置图片的背景色
	 * 
	 * @param g
	 */
	private void setBackGround(Graphics g) {
		// 设置颜色
		g.setColor(Color.WHITE);
		// 填充区域
		g.fillRect(0, 0, WIDTH, HEIGHT);
	}

	/**
	 * 设置图片的边框
	 * 
	 * @param g
	 */
	private void setBorder(Graphics g) {
		// 设置边框颜色
		g.setColor(Color.WHITE);
		// 边框区域
		g.drawRect(1, 1, WIDTH - 2, HEIGHT - 2);
	}

	/**
	 * 在图片上画随机线条
	 * 
	 * @param g
	 */
	private void drawRandomLine(Graphics g) {
		// 设置颜色
		g.setColor(Color.GREEN);
		// 设置线条个数并画线
		for (int i = 0; i < 5; i++) {
			int x1 = new Random().nextInt(WIDTH);
			int y1 = new Random().nextInt(HEIGHT);
			int x2 = new Random().nextInt(WIDTH);
			int y2 = new Random().nextInt(HEIGHT);
			g.drawLine(x1, y1, x2, y2);
		}
	}

	/**
	 * 画随机字符
	 * 
	 * @param g
	 * @param createTypeFlag
	 * @return String... createTypeFlag是可变参数，
	 *         Java1.5增加了新特性：可变参数：适用于参数个数不确定，类型确定的情况
	 *         ，java把可变参数当做数组处理。注意：可变参数必须位于最后一项
	 */
	private String drawRandomNum(Graphics2D g, String... createTypeFlag) {
		// 设置颜色
		g.setColor(Color.getHSBColor(0.27140257f, 1.0f, 0.7176471f));
		// 设置字体
		g.setFont(new Font("宋体", Font.BOLD, 20));
		// 数字和字母的组合
		String baseNumLetter = "123456789ABCDEFGHJKLMNPQRSTUVWXYZ";
		// 默认截取数字和字母的组合
		return createRandomChar(g, baseNumLetter);

	}

	/**
	 * 创建随机字符
	 * 
	 * @param g
	 * @param baseChar
	 * @return 随机字符
	 */
	private String createRandomChar(Graphics2D g, String baseChar) {
		StringBuffer sb = new StringBuffer();
		int x = 5;
		String ch = "";
		// 控制字数
		for (int i = 0; i < 4; i++) {
			// 设置字体旋转角度
			int degree = new Random().nextInt() % 30;
			ch = baseChar.charAt(new Random().nextInt(baseChar.length())) + "";
			sb.append(ch);
			// 正向角度
			g.rotate(degree * Math.PI / 180, x, 20);
			g.drawString(ch, x, 20);
			// 反向角度
			g.rotate(-degree * Math.PI / 180, x, 20);
			x += 30;
		}
		return sb.toString();
	}
}
