package site.metacoding.miniproject.domain.notice;

import java.util.List;


public interface NoticeDao {
	public void insert(Notice notice);
	public Notice findById(Integer noticeId);
	public List<Notice> findAll();
	public void update(Notice notice); //dto생각
	public void deleteById(Integer noticeId);
}
