package com.watchluxury.application.service;


import com.watchluxury.application.entity.User;
import com.watchluxury.application.model.dto.UserDTO;
import com.watchluxury.application.model.request.ChangePasswordRequest;
import com.watchluxury.application.model.request.CreateUserRequest;
import com.watchluxury.application.model.request.UpdateProfileRequest;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    List<UserDTO> getListUsers();

    Page<User> adminListUserPages(String fullName, String phone, String email, Integer page);

    User createUser(CreateUserRequest createUserRequest);

    void changePassword(User user, ChangePasswordRequest changePasswordRequest);

    User updateProfile(User user, UpdateProfileRequest updateProfileRequest);
}
