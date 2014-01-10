package com.sharkweb.product;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.builder.ToStringBuilder;

	
	@Entity
	@Table(name = "product")
	public class Product {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int productID;
		@Column
		private int customerID;
		@Column
		private String producttype;
		@Column
		private float productvalue;
		@Column
		private float commision;
		@Column
		private Date orderdate;
		@Column
		private Date deliverydate;
		@Column
		private float weight;
		
		

		public Product() {
		}

		public Product(int productID ,int customerID, String producttype, float productvalue,
				float commision,Date orderdate,Date deliverydate,float weight) {
			super();
			this.productID = productID;
			this.customerID = customerID;
			this.producttype = producttype;
			this.productvalue = productvalue;
			this.commision = commision;
			this.orderdate = orderdate;
			this.deliverydate = deliverydate;
			this.weight = weight;
		
		}

		

		public int getCustomerID() {
			return customerID;
		}

		public void setCustomerID(int customerID) {
			this.customerID = customerID;
		}

		@Override
		public String toString() {
			return ToStringBuilder.reflectionToString(this);
		}

		public int getProductID() {
			return productID;
		}

		public void setProductID(int productID) {
			this.productID = productID;
		}

		public String getProducttype() {
			return producttype;
		}

		public void setProducttype(String producttype) {
			this.producttype = producttype;
		}

		public float getProductvalue() {
			return productvalue;
		}

		public void setProductvalue(float productvalue) {
			this.productvalue = productvalue;
		}

		public float getCommision() {
			return commision;
		}

		public void setCommision(float commision) {
			this.commision = commision;
		}

		public Date getOrderdate() {
			return orderdate;
		}

		public void setOrderdate(Date orderdate) {
			this.orderdate = orderdate;
		}

		public Date getDeliverydate() {
			return deliverydate;
		}

		public void setDeliverydate(Date deliverydate) {
			this.deliverydate = deliverydate;
		}

		public float getWeight() {
			return weight;
		}

		public void setWeight(float weight) {
			this.weight = weight;
		}

	
	}

