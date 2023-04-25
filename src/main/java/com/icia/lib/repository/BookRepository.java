package com.icia.lib.repository;

import com.icia.lib.dto.BookDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(BookDTO bookDTO) {
        // 두개의 매개변수가 있는데 첫번째 매개변수는 mapper 에서 가져온 변수
        // 두번째 매개변수는 실제 쿼리에다가 적용할 값
//        insert 수행결과를 int 로 리턴 , insert 수행이 되지 않았으면 0 , 있으면 1
        return sql.insert("Book.save" , bookDTO);

    }

    public List<BookDTO> findAll() {
        return sql.selectList("Book.findAll");
    }
    public BookDTO inquiry(Long id){
        return sql.selectOne("Book.inquiry", id );
    }
    public BookDTO delete(Long id){
        return sql.selectOne("Book.delete",id);
    }
}
