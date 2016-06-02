package ru.ke.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import ru.ke.model.Message;

/**
 * Created by Crow on 18.05.2016.
 */
public interface MessageRepository extends PagingAndSortingRepository<Message, Long> {

//    @Query("select m from Message m order by m.publishDate")
//    public Iterable<Message> findByPaging();
}
