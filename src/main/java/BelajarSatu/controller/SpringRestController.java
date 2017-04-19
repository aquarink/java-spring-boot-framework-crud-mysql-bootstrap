package BelajarSatu.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import BelajarSatu.model.TaskModel;
import BelajarSatu.service.TaskService;

@RestController
public class SpringRestController {
	
	@Autowired
	private TaskService taskService;
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello from Spring Rest Controller";
	}
	
//	@GetMapping("/all-task")
//	public String allTask() {
//		System.out.println(taskService.findAll().toString());
//		return taskService.findAll().toString();
//	}
//	
//	@GetMapping("/save-task")
//	public String save(@RequestParam String name, @RequestParam String desc) {
//		TaskModel taskModel = new TaskModel(name, desc, new Date(), false);
//		taskService.save(taskModel);
//		return "Saved";
//	}
//
//	@GetMapping("/delete-task")
//	public String delete(@RequestParam int id) {
//		taskService.delete(id);
//		return "Deleted";
//	}
}
