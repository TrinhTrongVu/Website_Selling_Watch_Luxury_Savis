package com.watchluxury.application.service;

import com.watchluxury.application.entity.Comment;
import com.watchluxury.application.model.request.CreateCommentPostRequest;
import com.watchluxury.application.model.request.CreateCommentProductRequest;
import org.springframework.stereotype.Service;

@Service
public interface CommentService {
    Comment createCommentPost(CreateCommentPostRequest createCommentPostRequest, long userId);
    Comment createCommentProduct(CreateCommentProductRequest createCommentProductRequest, long userId);
}
