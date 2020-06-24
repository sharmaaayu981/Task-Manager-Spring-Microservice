package comm.example.controller;
import comm.example.model.Task;
import comm.example.service.TaskService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/task")
public class TaskController {
    private TaskService taskService;

    public TaskController(TaskService taskService) {
        this.taskService = taskService;
    }
    @RequestMapping("/listTask")
    public String listTask(Model model) {
        model.addAttribute("tasks", taskService.getTasks());
        return "task-list";

    }
    @RequestMapping("/showFormForAdd")
    public String showFormForAdd(Model model)
    {
        model.addAttribute("task",new Task());
        return "task-form";
    }
    @RequestMapping("/saveTask")
    public String saveTask(@ModelAttribute("task") Task task)
    {
        taskService.createTask(task);
        return "redirect:/task/listTask";
    }
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("taskId") int theId,
                                    Model theModel) {

        Task theTask = taskService.getTask(theId);
        theModel.addAttribute("task", theTask);

        return "task-form";
    }
    @RequestMapping("/updateTask")
    public String updateTask(@ModelAttribute("task") Task task)
    {
        taskService.createTask(task);
        return "redirect:/task/listTask";
    }
    @RequestMapping("/delete")
    public String delete(@RequestParam("taskId") int taskId)
    {
        taskService.deleteTask(taskId);
        return "redirect:/task/listTask";
    }
}
