package co.nnull.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;

public class Notice implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "bulletin/notice";
	}

}
