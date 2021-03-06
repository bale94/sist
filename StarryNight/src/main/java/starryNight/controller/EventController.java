package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import starryNight.service.EventService;
import starryNight.vo.Event;

@Controller
public class EventController {
	
	@Autowired(required = false)
	private EventService service;
	
	// http://localhost:7080/StarryNight/eventList.do
	@RequestMapping("eventList.do")
	public String eventList(Event evSch, Model m) {
		m.addAttribute("eventList", service.eventList(evSch));
		return "WEB-INF\\views\\event\\eventList.jsp";
	}

	@RequestMapping("event.do")
	public String getEvent(@RequestParam(value="event_no") int event_no, Model m) {
		m.addAttribute("event", service.getEvent(event_no));
		return "WEB-INF\\views\\event\\event.jsp";
	}
	
	@RequestMapping("eventInsertForm.do")
	public String eventInsertForm(){
		return "WEB-INF\\views\\event\\eventInsert.jsp";
	}
	
	@RequestMapping("eventInsert.do")
	public String eventInsert(Event evIns, Model m){
		service.insertEvent(evIns);
		m.addAttribute("isInserted", "Y");
		return "WEB-INF\\views\\event\\eventInsert.jsp";
	}

	@RequestMapping("eventUpdateForm.do")
	public String eventUpdateForm(){
		return "WEB-INF\\views\\event\\eventUpdate.jsp";
	}
	
	@RequestMapping("eventUpdate.do")
	public String eventUpdate(Event evUpt, Model m){
		service.updateEvent(evUpt);
		m.addAttribute("isUpdated", "Y");
		return "WEB-INF\\views\\event\\eventUpdate.jsp";
	}
	
	@RequestMapping()
	public String eventDelete(@RequestParam(value="event_no") int event_no, Model m) {
		service.deleteEvent(event_no);
		m.addAttribute("isDeleted", "Y");
		return "";
	}
}
