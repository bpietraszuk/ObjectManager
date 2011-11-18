package service;

import java.util.List;

import domain.Monitor;




public interface MonitorManager {
	public void addMonitor(Monitor m);
	public List<Monitor> getAllMonitors();
	public void updateMonitor(Monitor m);
	public void deleteMonitor(Monitor m);
	public void findMonitors(Monitor m);
	public List<Monitor> getSearchResults();
}