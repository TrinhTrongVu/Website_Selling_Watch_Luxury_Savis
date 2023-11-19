package com.watchluxury.repository;

import com.watchluxury.entity.Brand;
import com.watchluxury.model.dto.ChartDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Long> {
    Brand findByName(String name);

    @Query(value = "SELECT * FROM brand b " +
            "WHERE b.id LIKE CONCAT('%',?1,'%') " +
            "AND b.name LIKE CONCAT('%',?2,'%') " +
            "AND b.status LIKE CONCAT('%',?3,'%')", nativeQuery = true)
    Page<Brand> adminGetListBrands(String id, String name, String status, Pageable pageable);

    @Query(value = "select b.name as label, count(o.quantity) as value  from brand b " +
            "inner join product p on p.brand_id = b.id " +
            "inner join orders o on p.id = o.product_id " +
            "where o.status = 3 " +
            "group by b.id",nativeQuery = true)
    List<ChartDTO> getProductOrderBrands();


}
