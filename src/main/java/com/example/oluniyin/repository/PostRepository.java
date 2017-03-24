package com.example.oluniyin.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.oluniyin.domain.Post;

@Repository
public class PostRepository {

	private static JdbcTemplate jdbc;

	@Autowired
	public PostRepository(JdbcTemplate jdbc) {
		this.jdbc = jdbc;
	}

	public Post findFirstByOrderByPostedOnDesc() {
		String sql = "select * from post order by posted_on  limit 1";
		return jdbc.queryForObject(sql, new RowMapper<Post>() {
			@Override
			public Post mapRow(ResultSet rs, int rowNum) throws SQLException {
				Post post = new Post();
				post.setId(Integer.parseInt(rs.getString("id")));
				post.setTitle(rs.getString("title"));
				post.setTeaser(rs.getString("teaser"));
				post.setBody(rs.getString("body"));
				post.setSlug(rs.getString("slug"));
				post.setAuthor(rs.getInt("author_id"));
				post.setPostedOn(rs.getDate("posted_on"));
				return post;
			}

		});
	}

	public List<Post> findAllByOrderByPostedOnDesc() {
		String sql = "select * from post order by posted_on ";

		return jdbc.query(sql, (rs, i) -> new Post(rs.getInt("id"), rs.getString("title"), rs.getString("teaser"),
				rs.getString("body"), rs.getString("slug"), rs.getDate("posted_on"), rs.getInt("author_id")));
	}

	public Post findBySlug(String slug) {
		String sql = "select * from post where slug= ? order by posted_on";
		return jdbc.queryForObject(sql, new Object[] { slug }, new RowMapper<Post>() {

			@Override
			public Post mapRow(ResultSet rs, int numRow) throws SQLException {
				Post post = new Post();
				post.setId(Integer.parseInt(rs.getString("id")));
				post.setTitle(rs.getString("title"));
				post.setTeaser(rs.getString("teaser"));
				post.setBody(rs.getString("body"));
				post.setSlug(rs.getString("slug"));
				post.setAuthor(rs.getInt("author_id"));
				post.setPostedOn(rs.getDate("posted_on"));
				return post;
			}
		});
	}

}
