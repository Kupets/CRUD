package ru.ke.controllers;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.ke.model.Message;

import java.util.Date;

@Controller
public class MessageController extends CommonController {
    private static final int ITEMS_ON_PAGE = 3;

    private void addMessages2Model(int page, Model model) {
        Page<Message> messagesPage = messageRepository.findAll(new PageRequest(page, ITEMS_ON_PAGE, Sort.Direction.DESC, "publishDate"));
        int current = messagesPage.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + ITEMS_ON_PAGE, messagesPage.getTotalPages());

        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);
        model.addAttribute("messagesPage", messagesPage);
        model.addAttribute("messageList", messagesPage.getContent());
    }

    private String findMessages(int page, Model model, Message o) {
        model.addAttribute("version", getVersionString());
        model.addAttribute("message", o);
        addMessages2Model(page, model);

        return "messages";
    }

    @RequestMapping("/messages")
    public String list(Model model) {
        return findMessages(0, model, new Message());
    }

    @RequestMapping("/messages/{page}")
    public String list(@PathVariable("page") Integer page, Model model) {
        return findMessages(page - 1, model, new Message());
    }

    @RequestMapping(value = "/messages/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model) {
        return findMessages(0, model, messageRepository.findOne(id));
    }

    @RequestMapping(value = "/messages/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("message") Message message) {
        if(message.getId() == null) {
            message.setPublishDate(new Date());
        }
        messageRepository.save(message);

        //return new ModelAndView("redirect:" + projectUrl);
        return "redirect:/mvc/messages";
    }

    @RequestMapping(value = "/messages/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") Long id) {
        messageRepository.delete(id);

        //return new ModelAndView("redirect:" + projectUrl);
        return "redirect:/mvc/messages";
    }
}