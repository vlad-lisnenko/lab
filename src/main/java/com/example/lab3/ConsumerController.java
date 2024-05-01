package com.example.lab3;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/consumer")
@RequiredArgsConstructor
public class ConsumerController {
    private final Consumer consumer;

    @GetMapping()
    public String showPage() {
        return "received";
    }

    @GetMapping("/next")
    public ResponseEntity<String> getNextMessage() {
        String message = consumer.getNextMessage();
        if (message != null) {
            return ResponseEntity.ok(message);
        } else {
            return ResponseEntity.noContent().build();
        }
    }
}
