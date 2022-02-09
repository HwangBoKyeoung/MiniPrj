package co.nnull.prj.cal.service;

import java.util.List;

import co.nnull.prj.cal.vo.CalVO;

public interface CalService {
	List<CalVO> selectCal();
	public void insertCal(CalVO cvo);
	public void deleteCal(CalVO cvo);
}
