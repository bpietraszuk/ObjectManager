package sprawdzian.service;

import java.util.ArrayList;
import java.util.List;

import sprawdzian.domain.Monitor;

public class MonitorManagerMemory implements MonitorManager {

	private List<Monitor> db = new ArrayList<Monitor>();
	private List<Monitor> searchResults = new ArrayList<Monitor>();

	@Override
	public void addMonitor(Monitor p) {
		Monitor nP = new Monitor(p.getResolution(), p.getBrand());
		db.add(nP);
	}

	@Override
	public void updateMonitor(Monitor p) {
		Monitor nP = new Monitor(p.getResolution(), p.getBrand());
		for (Monitor p1 : db) {
			if (p1.getResolution().equals(nP.getResolution())) {
				p1.setBrand(nP.getBrand());
			}
		}
	}

	@Override
	public void deleteMonitor(Monitor m) {
		Monitor monitor = new Monitor(m.getResolution(), m.getBrand());
		for (Monitor mon : db) {
			if (mon.equals(monitor)) {
				db.remove(mon);
			}
		}
	}

	@Override
	public List<Monitor> getAllMonitors() {
		return db;
	}

	@Override
	public void findMonitors(Monitor m) {
		Monitor nP = new Monitor(m.getResolution(), m.getBrand());
		searchResults.removeAll(searchResults);
		for (Monitor each : db) {
			if (nP.equals(each)) {
				searchResults.add(each);
			}
		}
	}

	@Override
	public List<Monitor> getSearchResults() {
		return searchResults;

	}
}