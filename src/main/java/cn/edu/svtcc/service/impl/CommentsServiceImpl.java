package cn.edu.svtcc.service.impl;

import cn.edu.svtcc.dao.CommentsDao;
import cn.edu.svtcc.domain.CommentsDO;
import cn.edu.svtcc.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("CommentsService")
public class CommentsServiceImpl implements CommentsService {
    @Autowired
    private CommentsDao commentsDao;
    @Override
    public ArrayList<CommentsDO> getAllBookComments(Integer bookId) {
        if (commentsDao.getAllBookComments(bookId)!=null) {
            return commentsDao.getAllBookComments(bookId);
        }
        return null;
    }

    @Override
    public boolean addComments(CommentsDO commentsDO) {
        if (commentsDao.addComments(commentsDO)>0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteComments(Integer commentsId) {
        if (commentsDao.deleteComments(commentsId)!=null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean updateData() {
        if (commentsDao.updateData()>0) {
            return true;
        }
        return false;
    }
}
