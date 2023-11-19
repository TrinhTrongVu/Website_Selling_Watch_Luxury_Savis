package com.watchluxury.repository;

import com.watchluxury.entity.Category;
import com.watchluxury.model.dto.ChartDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    Category findByName(String name);

    @Query(value = "SELECT count(category_id) FROM product_category WHERE category_id = ?1", nativeQuery = true)
    int checkProductInCategory(long id);

    @Query(value = "SELECT * FROM category c " +
            "WHERE c.id LIKE CONCAT('%',?1,'%') " +
            "AND c.name LIKE CONCAT('%',?2,'%') " +
            "AND c.status LIKE CONCAT('%',?3,'%')", nativeQuery = true)
    Page<Category> adminGetListCategory(String id, String name, String status, Pageable pageable);

    @Query(value = "select  c.name as label, count(o.quantity) as value from category c " +
            "inner join product_category pc on pc.category_id = c.id " +
            "inner join product p on p.id = pc.product_id " +
            "inner join orders o on o.product_id = p.id " +
            "where o.status = 3 " +
            "group by c.id ",nativeQuery = true)
    List<ChartDTO> getListProductOrderCategories();


}
