package com.sharkweb.purchase;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * @author Shafeq
 * 
 */

@Entity
@Table(name = "purchase")
public class Purchase {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int purchaseID;
	@Column
	private Date purchasedate;
	@Column
	private int customerID;
	@Column
	private int productID;
	@Column
	private String purchasetype;
	
	

	public Purchase() {
	}

	public Purchase(int purchaseID, Date purchasedate, int customerID,
			int productID,String purchasetype) {
		super();
		this.purchaseID = purchaseID;
		this.purchasedate = purchasedate;
		this.customerID = customerID;
		this.productID = productID;
		this.purchasetype = purchasetype;
	}

	public String getPurchasetype() {
		return purchasetype;
	}

	public void setPurchasetype(String purchasetype) {
		this.purchasetype = purchasetype;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	public int getPurchaseID() {
		return purchaseID;
	}

	public void setPurchaseID(int purchaseID) {
		this.purchaseID = purchaseID;
	}

	public Date getPurchasedate() {
		return purchasedate;
	}

	public void setPurchasedate(Date purchasedate) {
		this.purchasedate = purchasedate;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

}
