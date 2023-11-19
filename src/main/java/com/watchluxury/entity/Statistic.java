package com.watchluxury.entity;

import com.watchluxury.model.dto.StatisticDTO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;

@SqlResultSetMappings(
        value = {
                @SqlResultSetMapping(
                        name = "statisticDTO",
                        classes = @ConstructorResult(
                                targetClass = StatisticDTO.class,
                                columns = {
                                        @ColumnResult(name = "sales",type = Long.class),
                                        @ColumnResult(name = "profit",type = Long.class),
                                        @ColumnResult(name = "quantity",type = Integer.class),
                                        @ColumnResult(name = "createdAt",type = String.class)
                                }
                        )
                )
        }
)


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "statistic")
public class Statistic {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "sales")
    private long sales;
    @Column(name = "profit")
    private long profit;
    @Column(name = "quantity")
    private int quantity;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id")
    private Order order;
    @Column(name = "created_at")
    private Timestamp createdAt;
}
