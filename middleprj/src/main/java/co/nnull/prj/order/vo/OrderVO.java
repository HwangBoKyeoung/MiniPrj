package co.nnull.prj.order.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int orderId;
	private String orderName;
	private int orderPrice;
	private Date orderDate;
	private String membersId;

}



