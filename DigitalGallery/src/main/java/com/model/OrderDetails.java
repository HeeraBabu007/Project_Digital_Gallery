package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.istack.internal.NotNull;

@Entity
public class OrderDetails {

		@Id
		@GeneratedValue
		private int orderId;
		
		@NotNull
		@Column(unique = true)
		private String userId;
		
		@DateTimeFormat
		private Date orderDate;
		
		@NotNull
		private String orderStatus;
		
		@NotNull
		private int grandTotal;
		@NotNull
		
		private String paymentMode;
		@NotNull
		@Column(unique = true)
		private String address;
		
		public OrderDetails()
		{
			
		}
		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public Date getOrderDate() {
			return orderDate;
		}
		public void setOrderDate(Date orderDate) {
			this.orderDate = orderDate;
		}
		public String getOrderStatus() {
			return orderStatus;
		}
		public void setOrderStatus(String orderStatus) {
			this.orderStatus = orderStatus;
		}
		public int getGrandTotal() {
			return grandTotal;
		}
		public void setGrandTotal(int grandTotal) {
			this.grandTotal = grandTotal;
		}
		public String getPaymentMode() {
			return paymentMode;
		}
		public void setPaymentMode(String paymentMode) {
			this.paymentMode = paymentMode;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
					
}