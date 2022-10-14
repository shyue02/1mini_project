package site.metacoding.miniproject.domain.resume;

import java.util.List;

public interface ResumeDao {
	public void insert(Resume resume);

	public Resume findById(Integer resumeId);

	public List<Resume> findAll();

	public void update(Resume resume); // dto생각

	public void deleteById(Integer resumeId);
}
