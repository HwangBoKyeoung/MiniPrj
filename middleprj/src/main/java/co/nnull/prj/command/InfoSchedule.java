package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;

public class InfoSchedule implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 이용안내 -> 스케쥴
		return "infoUse/infoSchedule";
	}

}
