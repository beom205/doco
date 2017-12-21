package com.doco.domain;

import lombok.Data;

@Data
public class Member {
	private String id, password, mpoto_name, mphoto_path, name, level, tel, email, org_name, org_owner, org_category;
}
