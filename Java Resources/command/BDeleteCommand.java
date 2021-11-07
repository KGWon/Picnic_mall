package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import picnic.Dao.BDao;
import picnic.Dto.BDto;

public class BDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String bId = request.getParameter("bId");
		String name = request.getParameter("name");
		BDao dao = new BDao();
		int Delete_Result = dao.delete(bId, name);

		HttpSession session = request.getSession();

		session.setAttribute("Delete_Result", Delete_Result);
	}

}
