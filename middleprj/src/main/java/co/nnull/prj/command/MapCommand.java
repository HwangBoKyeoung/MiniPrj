package co.nnull.prj.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.gym.service.GymService;
import co.nnull.prj.gym.serviceImpl.GymServiceImpl;
import co.nnull.prj.gym.vo.GymVO;

public class MapCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		GymService gymDao = new GymServiceImpl();

		List<GymVO> list = gymDao.selectList();
		request.setAttribute("gymInfo", list);

		return "main/map";
	}

}
