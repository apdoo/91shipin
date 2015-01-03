package com.hexor.repo;
/** 
 * @author  hexd
 * 创建时间：2014-8-19 上午10:54:25 
 * 类说明 
 * 代理服务器bean
 */
public class ProxyBean {
	private String ip;//代理服务器ip地址
	private int port;//代理服务器端口
	private String type;//代理服务器类型 http或https
	private String updatetime;//更新时间
	
	public ProxyBean(String ip, int port, String type, String updatetime) {
		super();
		this.ip = ip;
		this.port = port;
		this.type = type;
		this.updatetime = updatetime;
	}

    @Override
    public String toString() {
        return "ProxyBean{" +
                "ip='" + ip + '\'' +
                ", port='" + port + '\'' +
                ", type='" + type + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }

    public ProxyBean() {
		super();
	}

	public String getIp() {
		return ip.trim();
	}
	public void setIp(String ip) {
		this.ip = ip;
	}

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}
	
}
