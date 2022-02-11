package co.nnull.prj.program.service;

import java.util.List;

import co.nnull.prj.program.vo.ProgramVO;

public interface ProgramMapper {
	public List<ProgramVO> programList();
	public ProgramVO programSelect(ProgramVO vo);
	public int programInsert(ProgramVO vo);
	public int programUpdate(ProgramVO vo);
	public int programDelete(ProgramVO vo);
}
