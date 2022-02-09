package co.nnull.prj.cal.service;

import java.util.List;

import co.nnull.prj.cal.vo.CalVO;

public interface CalService {
	List<CalVO> selectCal();
	public int insertCal(CalVO cvo);
	public int deleteCal(CalVO cvo);
	public int updateCal(CalVO cvo);
}
