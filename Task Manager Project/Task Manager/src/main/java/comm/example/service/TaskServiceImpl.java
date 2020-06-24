package comm.example.service;

import comm.example.dao.TaskDAO;
import comm.example.model.Task;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("taskService")
@Getter
@Setter
public class TaskServiceImpl implements TaskService {
    private TaskDAO taskDAO;

    public TaskServiceImpl() {
    }

    @Autowired
    public TaskServiceImpl(TaskDAO taskDAO) {

        this.taskDAO = taskDAO;
    }

    @Override
    public List<Task> getTasks() {
        return taskDAO.getTasks();
    }

    @Override
    public void createTask(Task task) {
        taskDAO.createTask(task);
    }

    @Override
    public Task getTask(int taskId) {
        return taskDAO.getTask(taskId);
    }

    @Override
    public void deleteTask(int taskId) {
        taskDAO.deleteTask(taskId);
    }

}
