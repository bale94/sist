package a01_diexp.z10_vo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Music {
	@Value("${music.title}")
	private String title;
	@Value("${music.singer}")
	private String singer;
	public Music() {
		// TODO Auto-generated constructor stub
	}
	public Music(String title, String singer) {
		this.title = title;
		this.singer = singer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	
}
