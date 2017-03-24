package com.example.oluniyin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.oluniyin.domain.Post;
import com.example.oluniyin.repository.PostRepository;

/**
 * 
 * @author gyebadokpo.ext
 *
 */
@Service
public class PostService {

	private PostRepository postRepository;

	public PostService(PostRepository postRepository) {
		
		this.postRepository = postRepository;
	}
	
	public Post getLatestPost(){
		return postRepository.findFirstByOrderByPostedOnDesc();
	}

	public List<Post> list() {
		return  postRepository.findAllByOrderByPostedOnDesc();
	}

	public Post getBySlug(String slug) {
		return postRepository.findBySlug(slug);
	}

}
