package com.watchluxury.entity;

import com.watchluxury.model.dto.ChartDTO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import javax.persistence.*;
import java.sql.Timestamp;

@SqlResultSetMappings(
        value = {
                @SqlResultSetMapping(
                        name = "chartCategoryDTO",
                        classes = @ConstructorResult(
                                targetClass = ChartDTO.class,
                                columns = {
                                        @ColumnResult(name = "label",type = String.class),
                                        @ColumnResult(name = "value",type = Integer.class)
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
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "name",nullable = false,length = 300)
    private String name;
    @Column(name = "slug",nullable = false)
    private String slug;
//    @Column(name = "description")
//    private String description;
    @Column(name = "orders")
    private int order;
    @Column(name = "status",columnDefinition = "BOOLEAN")
    private boolean status;
    @Column(name = "created_at")
    private Timestamp createdAt;
    @Column(name = "modified_at")
    private Timestamp modifiedAt;

//    @ManyToMany(mappedBy = "categories")
//    private List<Product> products;
}
