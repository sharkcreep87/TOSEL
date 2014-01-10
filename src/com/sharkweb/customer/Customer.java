package com.sharkweb.customer;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.validation.Validator;


import org.apache.commons.lang.builder.ToStringBuilder;

import com.sun.istack.internal.NotNull;

/**
 * @author Shafeq
 * 
 */

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int customerID;
	@Column
	private String nama;
	@Column
	private String ic;
	@Column
	private String tel;
	@Column
	private String no_acc;
	@Column
	private String waris;
	@Column
	private String alamat;
	@Column
    private String email;
	
	@Column
    private String nama_bank;


	public Customer() {
	}

	public Customer(int customerID, String nama, String ic, String tel,
			String no_acc, String waris, String alamat, String email,String bank_name) {
		super();
		this.customerID = customerID;
		this.nama = nama;
		this.ic = ic;
		this.tel = tel;
		this.no_acc = no_acc;
		this.waris = waris;
		this.alamat = alamat;
		this.email = email;
		this.nama_bank = nama_bank;
	
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}



	public String getNama_bank() {
		return nama_bank;
	}

	public void setNama_bank(String nama_bank) {
		this.nama_bank = nama_bank;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getIc() {
		return ic;
	}

	public void setIc(String ic) {
		this.ic = ic;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNo_acc() {
		return no_acc;
	}

	public void setNo_acc(String no_acc) {
		this.no_acc = no_acc;
	}

	public String getWaris() {
		return waris;
	}

	public void setWaris(String waris) {
		this.waris = waris;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	
	

}
