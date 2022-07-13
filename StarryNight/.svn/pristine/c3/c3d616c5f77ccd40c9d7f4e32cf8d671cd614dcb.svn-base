package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import starryNight.service.EventService;
import starryNight.vo.Event;

@Controller
public class EventController {
	
	@Autowired(required = false)
	private EventService service;
	
	// http://localhost:7080/StarryNight/eventList.do
	@RequestMapping("eventList.do")
	public String eventList(Event event, Model m) {
		m.addAttribute("eventList", service.eventList(event));
		return "WEB-INF/views/event/eventList.jsp";
	}

	@RequestMapping("event.do")
	public String event(Model m) {
		return "WEB-INF/views/event/event.jsp";
	}
}
