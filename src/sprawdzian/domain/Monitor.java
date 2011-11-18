package sprawdzian.domain;

public class Monitor {

	private String resolution;
	private String brand;

	public Monitor() {
	}

	public Monitor(String resolution, String brand) {
		super();
		this.resolution = resolution;
		this.brand = brand;
	}

	public boolean equals(Object o) {
		if (o == this) {
			return true;
		} else if (o == null || !getClass().equals(o.getClass())) {
			return false;
		} else {
			Monitor m = (Monitor) o;
			return this.resolution.equals(m.resolution)
					&& this.brand.equals(m.brand);
		}
	}

	public String toString() {
		return "Monitor [resolution=" + resolution + ", brand=" + brand
				+ "]\n";
	}

	public String getResolution() {
		return resolution;
	}

	public void setResolution(String resolution) {
		this.resolution = resolution;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

}
