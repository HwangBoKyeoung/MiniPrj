package co.nnull.prj.cart.vo;

import lombok.Data;

@Data
public class CartVO {
	private int cartId;
	private String membersId;
	private String membersName;
	private int membershipNum;
	private String membershipName;
	private int membershipPrice;
	private int cartAmout;
}
