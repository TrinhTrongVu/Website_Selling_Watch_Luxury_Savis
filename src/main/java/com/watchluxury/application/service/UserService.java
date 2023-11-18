package com.watch_luxury.application.service;


import com.watch_luxury.application.entity.User;
import com.watch_luxury.application.model.dto.UserDTO;
import com.watch_luxury.application.model.request.ChangePasswordRequest;
import com.watch_luxury.application.model.request.CreateUserRequest;
import com.watch_luxury.application.model.request.UpdateProfileRequest;
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
