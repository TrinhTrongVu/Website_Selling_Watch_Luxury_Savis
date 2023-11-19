package com.watchluxury.repository;

import com.watchluxury.entity.Statistic;
import com.watchluxury.model.dto.StatisticDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StatisticRepository extends JpaRepository<Statistic, Long> {

    @Query(value = "SELECT s.sales, s.profit, s.quantity, date_format(s.created_at,'%Y-%m-%d') as createdAt FROM statistic s " +
            "WHERE date_format(s.created_at,'%Y-%m-%d') BETWEEN DATE_SUB(NOW(), INTERVAL 30 DAY) " +
            "AND NOW() ORDER BY createdAt ASC ",nativeQuery = true)
    List<StatisticDTO> getStatistic30Day();

    @Query(value = "SELECT s.sales, s.profit, s.quantity, date_format(s.created_at,'%Y-%m-%d') as createdAt FROM statistic s " +
            "WHERE date_format(s.created_at,'%Y-%m-%d') >=?1 " +
            "AND date_format(s.created_at,'%Y-%m-%d') <=?2 " +
            "ORDER BY createdAt ASC ",nativeQuery = true)
    List<StatisticDTO> getStatisticDayByDay(String toDate, String formDate);

    @Query(value = "SELECT * FROM statistic  WHERE date_format(created_at,'%Y-%m-%d') = date_format(NOW(),'%Y-%m-%d')",nativeQuery = true)
    Statistic findByCreatedAT();


}
