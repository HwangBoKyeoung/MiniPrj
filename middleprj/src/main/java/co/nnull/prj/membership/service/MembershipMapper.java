package co.nnull.prj.membership.service;

import java.util.List;

import co.nnull.prj.membership.vo.MembershipVO;

public interface MembershipMapper {
	List<MembershipVO> membershipSelectList();
	
	MembershipVO membershipSelect(MembershipVO vo);
	
	int membershipInsert(MembershipVO vo);
	
	int membershipUpdate(MembershipVO vo);
	
	int membershipDelete(MembershipVO vo);
}
