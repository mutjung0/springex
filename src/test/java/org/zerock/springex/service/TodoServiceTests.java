package org.zerock.springex.service;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.zerock.springex.dto.TodoDTO;

import java.time.LocalDate;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/root-context.xml")
public class TodoServiceTests {

    @Autowired
    private  TodoService todoService;

    @Test
    public void register() {
        TodoDTO todoDTO = TodoDTO.builder()
                .title("스프링 테스트")
                .dueDate(LocalDate.of(2024,12,30))
                .writer("user00")
                .build();
        todoService.register(todoDTO);
    }
}
