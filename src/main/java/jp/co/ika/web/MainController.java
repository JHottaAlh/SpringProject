package jp.co.ika.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.co.ika.Bean.UserBean;
import jp.co.ika.dto.UserDto;
import jp.co.ika.service.TrophyService;
import jp.co.ika.service.UserService;

/*
 
Twitter認証に関して
参考URL:http://qiita.com/rubytomato@github/items/e6d7ed0d25a3835bf44b

MyBatisに関して
参考URL:http://www.mybatis.org/mybatis-3/ja/sqlmap-xml.html

JPAに関して(MyBatisを廃止する可能性が高いため)
参考URL:https://builder.japan.zdnet.com/sp_oracle/35067018/

Spring Data JPA(ORM)に利用するjarファイル
参考URL:http://libro.tuyano.com/index3?id=7626003

-----メモ-----
WEBのUIテストフレームワーク---Selenium
http://qiita.com/edo_m18/items/ba7d8a95818e9c0552d9

*/

@SessionAttributes("Account")
@Controller
public class MainController {
	@Autowired
    private UserService userService;
	@Autowired
	private TrophyService trophyService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model){
		UserBean login = new UserBean();
		login.setUser_name("");
		login.setPassword("");
		model.addAttribute("loginForm", login);
		
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute UserBean form, Model model){
		//ユーザー情報を取り出し、Accountセッションに格納する
		String user_name = form.getUser_name();
		String password = form.getPassword();
		UserDto user = userService.getUser(user_name, password);
		model.addAttribute("Account", user);
		
		//ログインしたユーザーのトロフィーの情報を取り出し、Accountセッションに追加する
		int user_id = user.getId();
		List<Map<String, Object>> result = trophyService.getTrophy(user_id);
		
		return "redirect:/";
	}
}
