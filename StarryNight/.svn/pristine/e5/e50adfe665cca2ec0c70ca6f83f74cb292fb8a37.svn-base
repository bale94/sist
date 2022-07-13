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
	
	public List<Event> eventList(Event event) {
		return dao.eventList(event);
	}

	public List<Event> getEvent(int eventNo){
		return dao.getEvent(eventNo);
	}
}
