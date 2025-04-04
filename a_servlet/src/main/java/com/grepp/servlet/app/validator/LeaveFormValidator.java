package com.grepp.servlet.app.validator;

import com.grepp.servlet.app.dao.MemberDao;
import com.grepp.servlet.app.dto.MemberDto;
import com.grepp.servlet.app.dto.form.LeaveForm;
import com.grepp.servlet.infra.db.JdbcTemplate;
import com.grepp.servlet.infra.exception.ValidException;
import com.grepp.servlet.infra.validator.Validator;
import java.sql.Connection;
import java.util.Optional;

public class LeaveFormValidator implements Validator<LeaveForm> {
    
    private final MemberDao memberDao = MemberDao.getInstance();
    private final JdbcTemplate jdbcTemplate = JdbcTemplate.getInstance();
    
    @Override
    public void validate(LeaveForm form) {
        Connection conn = jdbcTemplate.getConnection();
        Optional<MemberDto> member = memberDao.selectById(conn, form.getUserId());
        
        try{
            if (member.isEmpty()) {
                throw new ValidException("존재하지 않는 사용자 입니다.");
            }
            if (member.get().getLeave()) {
                throw new ValidException("이미 탈퇴한 회원입니다.");
            }
        }finally {
            jdbcTemplate.close(conn);
        }
    }
}
