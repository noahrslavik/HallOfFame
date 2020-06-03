package co.grandcircus.famouslab;


public class Complete {
	//@JsonProperty("first_name")
	private String firstName;
	//@JsonProperty("last_name")
	private String lastName;
	private String innovation;
	private Integer year;
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getInnovation() {
		return innovation;
	}
	public void setInnovation(String innovation) {
		this.innovation = innovation;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	@Override
	public String toString() {
		return "Complete [firstname=" + firstName + ", lastname=" + lastName + ", innovation=" + innovation + ", year="
				+ year + "]";
	}
	
	
	
	


}
