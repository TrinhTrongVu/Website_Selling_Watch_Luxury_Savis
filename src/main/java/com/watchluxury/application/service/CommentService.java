package com.watch_luxury.application.service;

import com.watch_luxury.application.entity.Comment;
import com.watch_luxury.application.model.request.CreateCommentPostRequest;
import com.watch_luxury.application.model.request.CreateCommentProductRequest;
import org.springframework.stereotype.Service;

@Service
public interface CommentService {
    Comment createCommentPost(CreateCommentPostRequest createCommentPostRequest, long userId);
    Comment createCommentProduct(CreateCommentProductRequest createCommentProductRequest, long userId);
}
