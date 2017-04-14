package com.cd.arrange.web.model;

/**
 * 权限模型
 * 
 * @author AutoTest
 * @since 2014年7月17日 下午1:02:55
 **/
public class Permission {
    private Long id;

    private String name;

    private String sign;

    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    
    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    @Override
    public String toString() {
        return "Permission [id=" + id + ", permissionName=" + name + ", permissionSign=" + sign + ", description=" + description + "]";
    }

}