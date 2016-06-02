package ru.ke.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @ModelAttribute("message")
    public Message constructMessage() {
        return new Message();
    }

    @RequestMapping("/messages")
    public String list(Model model) {
        model.addAttribute("message", new Message());
        model.addAttribute("messageList", messageRepository.findAll(new Sort("publishDate")));

        return "messages";
    }

    @RequestMapping(value = "/messages/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("message") Message message) {
        messageRepository.save(message);

        return "redirect:/mvc/messages";
    }
}