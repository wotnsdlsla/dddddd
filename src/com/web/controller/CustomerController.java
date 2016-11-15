package com.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.suwon.web.dao.NoticeDao;
import com.suwon.web.dao.NoticeFileDao;
import com.suwon.web.dao.mybatis.MyBatisNoticeDao;
import com.suwon.web.entities.Notice;
import com.suwon.web.entities.NoticeFile;
import com.suwon.web.model.NoticeModel;

@Controller
@RequestMapping("/customer/*")
public class CustomerController {

	@Autowired
	private NoticeDao noticeDao;

	@Autowired
	private NoticeFileDao noticeFileDao;

	public CustomerController() {
		/*
		 * noticeDao =new MyBatisNoticeDao(); noticeFileDao =new
		 * MyBatisNoticeFileDao();
		 */
	}

	@RequestMapping("notice")
	public String notice(Integer p, String t, String q, Model model) {
		/*
		 * String p = request.getParameter("p"); String t =
		 * request.getParameter("t"); String q = request.getParameter("q");
		 */

		// ������ ���� �ʾ��� ���� �⺻��
		int page = 1;
		String field = "TITLE";
		String query = "";

		// ���޵Ȱ� ���� �� ����
		if (p != null && p != 0)
			page = p;
		if (t != null && !t.equals(""))
			field = t;
		if (q != null)
			query = q;

		// NoticeDao noticeDao = new MyBatisNoticeDao();
		List<NoticeModel> list = noticeDao.getList(page, field, query);
		// ���ڵ� ���� ���ϱ�(����¡ �� �� ���� ��ư ���� �� ���ڵ尡 ���� ���� �����ϰ�
		// ����� ���ؼ�)
		int count = noticeDao.getCount(field, query);
		

		model.addAttribute("list", list);
		model.addAttribute("count", count);

		return "customer.notice";
	}

	@RequestMapping("notice-detail")
	public String noticeDetail(String code, Model model) {

		int hitUp = noticeDao.hitUp(code);

		Notice notice;
		List<NoticeFile> noticeFiles;

		notice = noticeDao.get(code);
		noticeFiles = noticeFileDao.getList(code);
		System.out.println(notice);
		System.out.println(code);
		model.addAttribute("n", notice);
		model.addAttribute("files", noticeFiles);
		model.addAttribute("prev", noticeDao.getPrev(code));
		model.addAttribute("next", noticeDao.getNext(code));

		return "customer.notice-detail";
	}

	@RequestMapping(value = "notice-reg", method = RequestMethod.GET)
	public String noticeReg(Notice norice) {

		return "customer.notice-reg";
	}

	@RequestMapping(value = "notice-reg", method = RequestMethod.POST)
	   public String noticeReg(Notice notice, @RequestParam(value="file") MultipartFile[] files, HttpServletRequest request) {

	      ServletContext ctx = request.getServletContext();
	      String path = ctx.getRealPath("/customer/upload");

	      File f = new File(path);
	      if (!f.exists())
	         if (!f.mkdirs())
	            System.out.println("예기치 않은 이유로 폴더 생성에 실패하였습니다.");

	      for (int i=0; i<files.length; i++) {
	         MultipartFile file = files[i];
	         String fname = file.getOriginalFilename();// 클라이언트가 지정한 이름
	         String fpath = path + File.separator + fname;
	         System.out.println(path + File.separator + fname);

	         InputStream fis;
	         OutputStream fos;
	         try {
	            fis = file.getInputStream();
	            fos = new FileOutputStream(fpath);

	            int count = -1;

	            byte[] buf = new byte[1024];
	            while ((count = fis.read(buf)) != -1)
	               fos.write(buf, 0, count);

	            fis.close();
	            fos.close();

	         } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }

	      }
	       notice.setWriter("스프링");
	       noticeDao.insert(notice);
	       
	       String code = noticeDao.getLastCode();
	       
	       for(int i=0; i<files.length; i++){
	          NoticeFile nf = new NoticeFile();
	          nf.setNoticeCode(code);
	          nf.setSrc(files[i].getOriginalFilename());
	          
	          noticeFileDao.insert(nf);
	       }
	       
	      
	      return "redirect:notice";
	   }

	@RequestMapping(value = "notice-edit", method = RequestMethod.GET)
	public String noticeEdit(String code, Model model) {

		Notice notice;
		List<NoticeFile> noticeFiles;

		notice = noticeDao.get(code);
		noticeFiles = noticeFileDao.getList(code);
		model.addAttribute("n", notice);
		model.addAttribute("files", noticeFiles);
		return "customer.notice-edit";
	}

	@RequestMapping(value = "notice-edit", method = RequestMethod.POST)
	public String noticeEdit() {
		return "customer.notice-edit";
	}

	@RequestMapping(value = "notice-file-del", method = RequestMethod.POST)
	public String noticefiledel(String code, String ncode, HttpServletRequest request) {

		/*
		 * ServletContext ctx = request.getServletContext(); String path =
		 * ctx.getRealPath("/cusomer/upload");
		 * 
		 * File f = new File(path); if (!f.exists()) if (!f.mkdirs())
		 * System.out.println("예기치 못한 이유로 폴더 생성에 실패했습니다.");
		 * 
		 * NoticeFile nf = noticeFileDao.get(code);
		 * 
		 * String fpath =path+File.separator+nf.getSrc();
		 * 
		 * File file =new File(fpath); file.delete();
		 */

		noticeFileDao.delete(code);
		return "redirect:notice-edit?code=" + ncode;

	}

}
