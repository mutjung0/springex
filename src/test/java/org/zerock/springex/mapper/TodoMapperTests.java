package org.zerock.springex.mapper;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.zerock.springex.domain.TodoVO;

import java.time.LocalDate;
import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/root-context.xml")
public class TodoMapperTests {

    @Autowired(required = false) // 해당 객체를 주입 받지 못하더라도 예외가 발생하지 않음
    private TodoMapper todoMapper;

    @Test
    public void test() {
        log.info(todoMapper.getTime());
    }

    @Test
    public void insert() {
        TodoVO todoVO = TodoVO.builder()
                .title("스프링 테스트")
                .dueDate(LocalDate.of(2024,12,30))
                .writer("user00")
                .build();
        todoMapper.insert(todoVO);
    }

    @Test
    public void selectAll() {
        List<TodoVO> voList = todoMapper.selectAll();
        voList.forEach(log::info);
    }

    @Test
    public void selectOne() {
        TodoVO todoVO = todoMapper.selectOne(1L);
        log.info(todoVO);
    }
}
