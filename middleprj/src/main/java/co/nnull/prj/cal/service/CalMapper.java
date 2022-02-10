package co.nnull.prj.cal.service;

import java.util.List;

import co.nnull.prj.cal.vo.CalVO;

public interface CalMapper {
	public List<CalVO> selectCal();
	public CalVO selectOneCal(CalVO cvo);
	public int insertCal(CalVO cvo);
	public int deleteCal(CalVO cvo);
	public int updateCal(CalVO cvo);
}
