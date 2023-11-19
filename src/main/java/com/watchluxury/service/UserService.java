package com.watchluxury.service;


import com.watchluxury.entity.User;
import com.watchluxury.model.dto.UserDTO;
import com.watchluxury.model.request.ChangePasswordRequest;
import com.watchluxury.model.request.CreateUserRequest;
import com.watchluxury.model.request.UpdateProfileRequest;
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
