package com.cjy.myWeb.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
	private String fileFileName;
	private String filePath;
@RequestMapping("/uploadPicture")
	public @ResponseBody Map uploadPicture(MultipartFile file,HttpServletRequest request){
			HashMap< String, String> map = new HashMap<>();
		 if(uploadFile("upload/pictureData",file)){
			 map.put("state", "0");
			 map.put("message","上传成功");
			 map.put("filePath",filePath);
			 //           setState("0");
//           setMessage("上传成功!");
		}
		return map;
	}
	
	@SuppressWarnings("resource")
	public boolean uploadFile(String path,MultipartFile f){
		WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();    
        ServletContext servletContext = webApplicationContext.getServletContext();  
		String p = servletContext.getRealPath(path);
       File ff = new File(p); // 判断文件夹是否存在,如果不存在则创建文件夹
       if (!ff.exists()) {
           System.out.println(ff.mkdirs());
       }
       String[] fileSuffix = new String[] { ".exe" };// 禁止文件
       try {
          
           // 判断文件格式
           for (int i = 0; i < fileSuffix.length; i++) {
        	   fileFileName = f.getOriginalFilename();
               if (fileFileName.endsWith(fileSuffix[i])) {
//               	setState("2");
//                   setMessage("格式不正确");
                   return false;
               }
           }
           
           fileFileName = UUID.randomUUID() + fileFileName.substring(fileFileName.lastIndexOf("."), fileFileName.length());
           InputStream inputStream = f.getInputStream();
           FileOutputStream outputStream = new FileOutputStream(p + "\\" + fileFileName);
           byte[] buf = new byte[1024];
           int length = 0;
           while ((length = inputStream.read(buf)) != -1) {
               outputStream.write(buf, 0, length);
           }
           inputStream.close();
           outputStream.flush();
           filePath = path + "/" + fileFileName;
           
       } catch (Exception e) {
           e.printStackTrace();
//           setState("2");
//           setMessage("上传失败!");
           return false;
       }
       return true;
   }
}
