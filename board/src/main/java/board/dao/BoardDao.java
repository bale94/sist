package board.dao;
import java.util.List;

// board.dao.BoardDao
import org.springframework.stereotype.Repository;

import board.vo.Board;

@Repository
public interface BoardDao {
	public List<Board> boardList(Board sch);
	
	public void insertBoard(Board ins);
}
