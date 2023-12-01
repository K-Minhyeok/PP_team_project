package com.hello.BoardService;

import com.hello.BoardBeans.BoardVO;
import com.hello.BoardDAO.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import com.hello.BoardService.BoardService;

@Service
public class BoardController extends BoardService{
//
//    @Autowired

BoardService boardService;

    @Override
    public int insertBoard(BoardVO vo){
        return boardService.insertBoard(vo);
    }


    @Override
    public int deleteBoard(int seq){
        return boardService.deleteBoard(seq);
    }
    @Override
    public int updateBoard(BoardVO vo){
        return boardService.updateBoard(vo);
    }
    @Override
    public BoardVO getBoard(int seq){
        return boardService.getBoard(seq);
    }

    @Override
    public List<BoardVO> getBoardList(){
        return boardService.getBoardList();
    }
}
