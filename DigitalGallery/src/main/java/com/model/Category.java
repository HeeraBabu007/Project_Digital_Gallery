package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category 
{
	
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int categoryid;

@Column
private String categoryName;
@Column
private String categoryDiscription;

public Category()
{
}
public int getCategoryId() 
{
	return categoryid;
}

public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public String getCategoryDiscription() {
	return categoryDiscription;
}
public void setCategoryDiscription(String categoryDiscription) {
	this.categoryDiscription = categoryDiscription;
}

@Override
public String toString() {
return "categoryId [id=" + categoryid + ", name=" + categoryName + ", email=" + categoryDiscription + "]";
}

}