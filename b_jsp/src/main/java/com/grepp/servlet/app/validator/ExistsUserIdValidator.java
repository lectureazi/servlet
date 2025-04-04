package com.grepp.servlet.app.validator;

import com.grepp.servlet.app.dao.MemberDao;
import com.grepp.servlet.infra.db.JdbcTemplate;
import com.grepp.servlet.infra.exception.ValidException;
import com.grepp.servlet.infra.validator.Validator;
import java.sql.Connection;

public class ExistsUserIdValidator implements Validator<String> {
    
    private final MemberDao memberDao = MemberDao.getInstance();
    private final JdbcTemplate jdbcTemplate = JdbcTemplate.getInstance();
    
    @Override
    public void validate(String userId) {
        Connection conn = jdbcTemplate.getConnection();
        
        try{
            if(memberDao.selectById(conn, userId).isEmpty())
                throw new ValidException("존재하지 않는 사용자 입니다.");
        }finally {
            jdbcTemplate.close(conn);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
