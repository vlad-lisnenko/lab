package com.example.lab3;

import lombok.extern.slf4j.Slf4j;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
@Slf4j
public class Consumer {
    private final List<String> messageList = new ArrayList<>();

    @JmsListener(destination = "text")
    public void onMessage(String message) {
        log.info("Received Message: " + message);
        messageList.add(message);
    }

    public String getNextMessage() {
        if (!messageList.isEmpty()) {
            return messageList.remove(0);
        } else {
            return null;
        }
    }
}