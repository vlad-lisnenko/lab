package com.example.lab3;

import jakarta.jms.Queue;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Component;

@Component
@Slf4j
@RequiredArgsConstructor
class Producer {
    private final JmsTemplate jmsTemplate;
    private final Queue queue;

    public void sendMessage(String text) {
        try {
            log.info("Attempting Send message to queue: " + queue.getQueueName());
            jmsTemplate.convertAndSend(queue, text);
        } catch (Exception e) {
            log.error("Recieved Exception during send Message: ", e);
        }
    }
}