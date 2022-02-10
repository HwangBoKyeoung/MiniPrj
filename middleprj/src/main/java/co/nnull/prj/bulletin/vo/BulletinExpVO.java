package co.nnull.prj.bulletin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class BulletinExpVO {
	
	
	private int expId;
	private Date expDate;
	private String expName;
	private String expTel;
	private String expCity;
	private String expProgram;
	private String expMessage;

}
