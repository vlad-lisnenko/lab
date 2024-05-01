package com.example.lab3;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/sender")
@RequiredArgsConstructor
public class ProduceController {
    private final Producer producer;

    @GetMapping()
    public String showPage() {
        return "sender";
    }

    @PostMapping()
    public String sendMessage(@RequestParam("senderMessage") String text) {
        producer.sendMessage(text);
        return showPage();
    }
}