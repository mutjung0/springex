package org.zerock.springex.mapper;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/root-context.xml")
public class TimeMapperTests {

    @Autowired(required = false) // 해당 객체를 주입 받지 못하더라도 예외가 발생하지 않음
    private TimeMapper mapper;

    @Autowired(required = false) // 해당 객체를 주입 받지 못하더라도 예외가 발생하지 않음
    private TimeMapper2 mapper2;

    @Test
    public void test() {
        log.info(mapper.getTime());
    }

    @Test
    public void testNow() {
        log.info(mapper2.getNow());
    }
}
