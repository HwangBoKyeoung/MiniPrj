package co.nnull.prj.enquiry.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EnquiryVO {
	private int enquiryId;
	private String enquirySubject;
	private String enquiryName;
	private String enquiryEmail;
	private String enquiryMessage;
	private String enquiryTel;
}