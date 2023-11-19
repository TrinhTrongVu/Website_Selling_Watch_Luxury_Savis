package com.watchluxury.repository;

import com.watchluxury.entity.Order;
import com.watchluxury.model.dto.OrderDetailDTO;
import com.watchluxury.model.dto.OrderInfoDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    @Query(value = "SELECT * FROM orders " +
            "WHERE id LIKE CONCAT('%',?1,'%') " +
            "AND receiver_name LIKE CONCAT('%',?2,'%') " +
            "AND receiver_phone LIKE CONCAT('%',?3,'%') " +
            "AND status LIKE CONCAT('%',?4,'%') " +
            "AND product_id LIKE CONCAT('%',?5,'%')", nativeQuery = true)
    Page<Order> adminGetListOrder(String id, String name, String phone, String status, String product, Pageable pageable);

    @Query( value = "SELECT od.id, od.total_price, od.size size_vn, p.name product_name, (p.images ->> '$[0]') as product_img " +
            "FROM orders od " +
            "INNER JOIN product p " +
            "ON od.product_id = p.id " +
            "WHERE od.status = ?1 " +
            "AND od.buyer =?2",nativeQuery = true)
    List<OrderInfoDTO> getListOrderOfPersonByStatus(int status, long userId);

    @Query(value = "SELECT orders.id, orders.total_price, orders.size size_vn, product.name product_name, orders.price as product_price, " +
            "orders.receiver_name, orders.receiver_phone, orders.receiver_address, orders.status, " +
            "product.images ->> \"$[0]\" as product_img " +
            "FROM orders " +
            "INNER JOIN product " +
            "ON orders.product_id = product.id " +
            "WHERE orders.id = ?1 AND orders.buyer = ?2",nativeQuery = true)
    OrderDetailDTO userGetDetailById(long id, long userId);

    int countByProductId(String id);
}
