package cn.wm.amp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.wm.amp.base.controller.BaseController;
/**
 * *开发者平台控制层
 * @author wm
 * @since 2019-05-11
 */
@Controller("developerController")
@RequestMapping("/dev")
public class DeveloperController extends BaseController{
	/**
	 * <b>加载开发者登录界面</b>
	 * @return
	 */
	@RequestMapping(value = "devLogin",method = RequestMethod.GET)
	public String getLoginForm() {
		return "dev/dev_login";
	}
}
