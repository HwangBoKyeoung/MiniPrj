package co.nnull.prj.command;


import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.nnull.prj.comm.Command;

public class ImageUpload implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ServletContext context = request.getServletContext();
		String uploadPath = context.getRealPath("/upload");
		
//		new MultipartRequest("요청정보", "저장할위치", "업로드파일의 max-size", "encoding방식", "rename정책");	=> maven에서 multipart source 가져오기
		MultipartRequest multi;
		String str = null;
		try {
			multi = new MultipartRequest(request, uploadPath, 1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
			
			String name = null;
			String originalName = null;
			String fileType = null;
			String fileSystemName = null;
			String fileUrl = null;
			
			Enumeration names = multi.getFileNames();
			while(names.hasMoreElements()) {
				name = (String)names.nextElement();
				originalName = multi.getOriginalFileName(name);
				fileType = multi.getContentType(name);
				fileSystemName = multi.getFilesystemName(name);
				
				System.out.println("name: " + name);
				System.out.println("originalName: " + originalName);
				System.out.println("fileType: " + fileType);
				System.out.println("fileSystemName: " + fileSystemName);
				
				fileUrl = request.getContextPath() + "/upload/" + fileSystemName;
				
//				{"filename":fileSystemName, "uploaded":1, "url":fileUrl}
				JsonObject json = new JsonObject();
				json.addProperty("fileName", fileSystemName);
				json.addProperty("uploaded", 1);
				json.addProperty("url", fileUrl);
				
				response.setContentType("application/json;charset=utf-8");
				Gson gson = new GsonBuilder().create();
				str = gson.toJson(json);
				response.getWriter().print(json);
				System.out.println(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return "ajax:"+str;
	}


}
