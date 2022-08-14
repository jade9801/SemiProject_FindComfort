package comfort.model.vo;

public class Around {
	private String aroundName;
	private int roomNo;
	private String aroundText;
	private String originName;
	private String changeName;
	private String filePath;
	
	public Around() {}

	public Around(String aroundName, int roomNo, String aroundText, String originName, String changeName,
			String filePath) {
		super();
		this.aroundName = aroundName;
		this.roomNo = roomNo;
		this.aroundText = aroundText;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
	}

	public String getAroundName() {
		return aroundName;
	}

	public void setAroundName(String aroundName) {
		this.aroundName = aroundName;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getAroundText() {
		return aroundText;
	}

	public void setAroundText(String aroundText) {
		this.aroundText = aroundText;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public String toString() {
		return "Around [aroundName=" + aroundName + ", roomNo=" + roomNo + ", aroundText=" + aroundText
				+ ", originName=" + originName + ", changeName=" + changeName + ", filePath=" + filePath
				+ ", getAroundName()=" + getAroundName() + ", getRoomNo()=" + getRoomNo() + ", getAroundText()="
				+ getAroundText() + ", getOriginName()=" + getOriginName() + ", getChangeName()=" + getChangeName()
				+ ", getFilePath()=" + getFilePath() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}



	
}
