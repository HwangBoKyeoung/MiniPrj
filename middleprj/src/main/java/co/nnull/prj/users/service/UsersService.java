package co.nnull.prj.users.service;

import java.util.List;

import co.nnull.prj.users.vo.UsersVO;

public interface UsersService {
	public List<UsersVO> usersList();
	public UsersVO usersSelect(UsersVO vo);
	public UsersVO usersUpdate(UsersVO vo);
	public UsersVO usersDelete(UsersVO vo);
}
