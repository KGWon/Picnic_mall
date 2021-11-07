package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import picnic.Dao.BDao;
import picnic.Dto.BDto;

import java.util.Date;
 

public class BWriteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub 

	//	String bId = request.getParameter("bId");
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");

//String bGroup = request.getParameter("bGroup");
		
 	
		System.out.println(bName);
		  
		  
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String bDate = formatter.format(new java.util.Date()); 

		
		BDao dao = new BDao();
		dao.write(bName, bTitle, bContent, bDate);
	}
}
