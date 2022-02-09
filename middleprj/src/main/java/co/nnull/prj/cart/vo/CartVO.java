package co.nnull.prj.cart.vo;

public class CartVO {
	private int cartId;
	private String membersId;
	private int membershipNum;
	private int cartAmount;
	private int membershipPrice;
	private int totalPrice;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public String getMembersId() {
		return membersId;
	}
	public void setMembersId(String membersId) {
		this.membersId = membersId;
	}
	public int getMembershipNum() {
		return membershipNum;
	}
	public void setMembershipNum(int membershipNum) {
		this.membershipNum = membershipNum;
	}
	public int getCartAmount() {
		return cartAmount;
	}
	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}
	public int getMembershipPrice() {
		return membershipPrice;
	}
	public void setMembershipPrice(int membershipPrice) {
		this.membershipPrice = membershipPrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void initTotalPrice() {
		this.totalPrice = this.membershipPrice * this.cartAmount;
	}
	
}



