package ru.ke.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import ru.ke.model.Message;
import ru.ke.repositories.MessageRepository;

import java.util.Collections;

@Controller
public class MessageController {

    @Autowired
    private MessageRepository messageRepository;

    @RequestMapping("/messages")
    public String list(Model model) {
        model.addAttribute("message", new Message());
        model.addAttribute("messageList", messageRepository.findAll(new Sort("publishDate")));

        return "messages";
    }

    @RequestMapping(value = "/messages/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("message") Message message) {
        messageRepository.save(message);

        //return new ModelAndView("redirect:" + projectUrl);
        return "redirect:/mvc/messages";
    }

    @RequestMapping(value = "/messages/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model){
        model.addAttribute("message", messageRepository.findOne(id));
        model.addAttribute("messageList", messageRepository.findAll(new Sort("publishDate")));

        return "messages";
    }

    @RequestMapping(value = "/messages/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") Long id) {
        messageRepository.delete(id);

        //return new ModelAndView("redirect:" + projectUrl);
        return "redirect:/mvc/messages";
    }
}