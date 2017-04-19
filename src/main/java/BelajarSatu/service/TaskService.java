package BelajarSatu.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import BelajarSatu.dao.TaskRepository;
import BelajarSatu.model.TaskModel;

@Service
@Transactional
public class TaskService {
	
	private final TaskRepository taskRepository;
	
	public TaskService(TaskRepository taskRepository) {
		this.taskRepository = taskRepository;
	} 
	
	public List<TaskModel> findAll() {
		List<TaskModel> task = new ArrayList<>();
		
		for(TaskModel taskModel : taskRepository.findAll()) {
			task.add(taskModel);
		}
		
		return task;
	}
	
	public TaskModel findTask(int id) {
		return taskRepository.findOne(id);
	}
	
	public void save(TaskModel taskModel) {
		taskRepository.save(taskModel);
	}
	
	public void delete(int id) {
		taskRepository.delete(id);
	}
}
