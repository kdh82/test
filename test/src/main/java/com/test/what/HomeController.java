package com.test.what;

import java.awt.List;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.TreeSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private String[] array;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		ArrayList<String> arr = new ArrayList<String>();
 // array = ArrayU
		/*
		 * arr.add("\\","?","","정품","인증","배송","할인","착불","추천","가성비","경옥고","직거래",
		 * "산지직송","산지 직송","V라인","V 라인","해외여행","해외 여행","전기충격기","전기 충격기","고급",
		 * "인기","사은품","브랜드","도촬","v라인","마약","아토피","무농약","유기농","무이자","무료배송",
		 * "무료 배송","군복","피부재생","피부 재생","남성용품","남성 용품","비만","변비","다이어트","체중감량",
		 * "고급","","여드름","특가","반품","(해외)","헤외","발송","당일 발송","당일발송","항균","화신효도의자",
		 * "당일배송","당일 배송","웰파인","다이어트보조제","다이어트도시락","물뽕","다이어트식품","안전벨트 확장 클립","안전벨트 확장"
		 * , "저농약","무항생제","권총","보조 기구","보조기구","음낭","군인 용품","무좀","발기");
		 */
		return "home";
	}
}
