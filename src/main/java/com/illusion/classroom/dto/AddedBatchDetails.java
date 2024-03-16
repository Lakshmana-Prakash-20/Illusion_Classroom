package com.illusion.classroom.dto;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Added_Batch_Details")
public class AddedBatchDetails {
	
	@Id
	private String batchcode;

	
	
	public AddedBatchDetails() {
	
	}

	public String getBatchcode() {
		return batchcode;
	}

	public void setBatchcode(String batchcode) {
		this.batchcode = batchcode;
	}

	@Override
	public String toString() {
		return "AddedBatchDetails [batchcode=" + batchcode + "]";
	}
	
	

}
