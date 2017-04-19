package BelajarSatu.dao;

import org.springframework.data.repository.CrudRepository;

import BelajarSatu.model.TaskModel;

public interface TaskRepository extends CrudRepository<TaskModel, Integer>{

}
