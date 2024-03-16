package com.illusion.classroom.dto;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Classroom_Added")
public class Batch {
	
	
	@Id
	private String batchcode;
	private String trainer;
	private String subjects;
	public String getBatchcode() {
		return batchcode;
	}
	public void setBatchcode(String batchcode) {
		this.batchcode = batchcode;
	}
	public String getTrainer() {
		return trainer;
	}
	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}
	public String getSubjects() {
		return subjects;
	}
	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}
	@Override
	public String toString() {
		return "Batch [batchcode=" + batchcode + ", trainer=" + trainer + ", subjects=" + subjects + "]";
	}
	
	
	

}
