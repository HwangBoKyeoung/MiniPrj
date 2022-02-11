package co.nnull.prj.program.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.program.service.ProgramMapper;
import co.nnull.prj.program.service.ProgramService;
import co.nnull.prj.program.vo.ProgramVO;

public class ProgramServiceImpl implements ProgramService{
	
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProgramMapper map = sqlSession.getMapper(ProgramMapper.class);
	
	@Override
	public List<ProgramVO> programList() {
		return map.programList();
	}

	@Override
	public ProgramVO programSelect(ProgramVO vo) {
		return map.programSelect(vo);
	}

	@Override
	public int programInsert(ProgramVO vo) {
		return map.programInsert(vo);
	}

	@Override
	public int programUpdate(ProgramVO vo) {
		return map.programUpdate(vo);
	}

	@Override
	public int programDelete(ProgramVO vo) {
		return map.programDelete(vo);
	}

}
