package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.EventDao;
import starryNight.vo.Event;

@Service
public class EventService {

	@Autowired(required = false)
	private EventDao dao;
	
	public List<Event> eventList(Event evSch) {
		return dao.eventList(evSch);
	}

	public Event getEvent(int event_no){
		return dao.getEvent(event_no);
	}
	
	public void insertEvent(Event evIns) {
		dao.insertEvent(evIns);
	}
	
	public Event updateEvent(Event evUpt) {
		return dao.updateEvent(evUpt);
	}
	
	public void deleteEvent(int event_no) {
		dao.deleteEvent(event_no);
	}
}
