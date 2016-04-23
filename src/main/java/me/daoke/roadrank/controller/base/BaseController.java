package me.daoke.roadrank.controller.base;

import java.beans.PropertyEditorSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.daoke.roadrank.utils.HtmlFilter;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;

public class BaseController {

	protected String accountId;

	/**
	 * 所有的子类方法执行之前都要先执行此方法，子类方法不需要在model此方法中的参数
	 * @param model
	 */
	@ModelAttribute
	public void init(ModelMap model, HttpServletResponse response, HttpServletRequest request) {
		String accountid = request.getHeader("accountid");
		this.accountId = accountid!=null?accountid:null;
		 
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		// String类型转换，将所有传递进来的String进行HTML编码，防止XSS攻击
		binder.registerCustomEditor(String.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(text == null ? null : HtmlFilter.filter(text.trim()));
			}
			@Override
			public String getAsText() {
				Object value = getValue();
				return value != null ? value.toString() : "";
			}
		});
	}

	public String getAccountId() {
		return accountId;
	}
}
