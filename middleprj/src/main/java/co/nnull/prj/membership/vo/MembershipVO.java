package co.nnull.prj.membership.vo;

import lombok.Data;

@Data
public class MembershipVO {
   private int membershipNum;
   private String membershipName;
   private int membershipPrice;
   private int membershipMonth;
   private String membershipSubject1;
   private String membershipSubject2;
   private String membershipSubject3;
   private String membershipSubject4;
}