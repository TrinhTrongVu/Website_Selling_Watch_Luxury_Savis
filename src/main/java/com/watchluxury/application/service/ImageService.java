package com.watchluxury.application.service;

import com.watchluxury.application.entity.Image;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ImageService {
    void saveImage(Image image);
    void deleteImage(String uploadDir,String filename);
    List<String> getListImageOfUser(long userId);
}
