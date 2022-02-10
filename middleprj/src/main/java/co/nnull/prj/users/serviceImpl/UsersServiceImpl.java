package co.nnull.prj.users.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.nnull.prj.comm.DataSource;
import co.nnull.prj.users.service.UsersMapper;
import co.nnull.prj.users.service.UsersService;
import co.nnull.prj.users.vo.UsersVO;

public class UsersServiceImpl implements UsersService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	UsersMapper map = sqlSession.getMapper(UsersMapper.class);

	@Override
	public List<UsersVO> usersList() {
		return null;
	}

	@Override
	public UsersVO usersSelect(UsersVO vo) {
		return null;
	}

	@Override
	public UsersVO usersUpdate(UsersVO vo) {
		return null;
	}

	@Override
	public UsersVO usersDelete(UsersVO vo) {
		return null;
	}

}
