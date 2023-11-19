package com.watchluxury.service;

import com.watchluxury.entity.Comment;
import com.watchluxury.model.request.CreateCommentPostRequest;
import com.watchluxury.model.request.CreateCommentProductRequest;
import org.springframework.stereotype.Service;

@Service
public interface CommentService {
    Comment createCommentPost(CreateCommentPostRequest createCommentPostRequest, long userId);
    Comment createCommentProduct(CreateCommentProductRequest createCommentProductRequest, long userId);
}
