package homeloan.model;

import org.springframework.web.multipart.MultipartFile;

public class FormUpload {

private MultipartFile files[];
	
	

	public MultipartFile[] getFiles() {
		return files;
	}

	public void setFiles(MultipartFile files[]) {
		this.files = files;
	}
}
