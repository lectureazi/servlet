package com.grepp.servlet.app;

import com.grepp.servlet.app.auth.Principal;
import com.grepp.servlet.app.dao.MemberDao;
import com.grepp.servlet.app.dao.MemberInfoDao;
import com.grepp.servlet.app.dto.MemberDto;
import com.grepp.servlet.app.dto.MemberInfoDto;
import com.grepp.servlet.infra.db.JdbcTemplate;
import com.grepp.servlet.infra.exception.DataAccessException;
import java.sql.Connection;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

// Note 02 Service
// 비지니스로직을 구현
// DB의 transaction 관리 (commit/rollback)
public class MemberService {
    
    private static final MemberService instance = new MemberService();
    private final JdbcTemplate jdbcTemplate = JdbcTemplate.getInstance();
    private final MemberDao memberDao = MemberDao.getInstance();
    private final MemberInfoDao memberInfoDao = MemberInfoDao.getInstance();
    private MemberService() {
    }

    public static MemberService getInstance() {
        return instance;
    }
    
    public MemberDto signup(MemberDto dto) {
        Connection conn = jdbcTemplate.getConnection();
        try {
            memberDao.insert(conn, dto);
            MemberInfoDto info = new MemberInfoDto();
            
            info.setUserId(dto.getUserId());
            memberInfoDao.insert(conn, info);
            
            jdbcTemplate.commit(conn);
            return dto;
        } catch (DataAccessException e) {
            jdbcTemplate.rollback(conn);
            throw e;
        } finally {
            jdbcTemplate.close(conn);
        }
    }
    
    public MemberDto selectById(String userId) {
        Connection conn = jdbcTemplate.getConnection();
        try {
            return memberDao.selectById(conn, userId).orElse(null);
        } finally {
            jdbcTemplate.close(conn);
        }
    }
    
    
    public List<MemberDto> selectAll() {
        Connection conn = jdbcTemplate.getConnection();
        try {
            return memberDao.selectAll(conn);
        } finally {
            jdbcTemplate.close(conn);
        }
    }
    
    public MemberDto updatePassword(MemberDto dto) {
        Connection conn = jdbcTemplate.getConnection();
        try {
            memberDao.updatePassword(conn, dto);
            memberInfoDao.updateModifyDate(conn, dto.getUserId());
            jdbcTemplate.commit(conn);
            return dto;
        } catch (DataAccessException e) {
            jdbcTemplate.rollback(conn);
            throw e;
        } finally {
            jdbcTemplate.close(conn);
        }
    }
    
    public MemberDto deleteById(String userId) {
        Connection conn = jdbcTemplate.getConnection();
        
        try {
            memberDao.delete(conn, userId);
            memberInfoDao.updateLeaveDate(conn, userId);
            jdbcTemplate.commit(conn);
            MemberDto dto = new MemberDto();
            dto.setUserId(userId);
            dto.setLeave(true);
            return dto;
        } catch (DataAccessException e) {
            jdbcTemplate.rollback(conn);
            throw e;
        } finally {
            jdbcTemplate.close(conn);
        }
    }
    
    public Principal authenticate(String userId, String password) {
        Connection conn = jdbcTemplate.getConnection();
        
        try {
            Optional<MemberDto> member = memberDao.selectByIdAndPassword(conn, userId, password);
            
            if (member.isPresent()) {
                MemberDto dto = member.get();
                return new Principal(dto.getUserId(), dto.getGrade(),
                    LocalDateTime.now());
            }
            
            return Principal.ANONYMOUS;
        } finally {
            jdbcTemplate.close(conn);
        }
    }
}
