package com.hexor.dao;

import com.hexor.repo.Pager;
import com.hexor.repo.VistLogBean;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-11
 * Time: 下午3:25
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.dao.IVistLogMapper")
public interface IVistLogMapper {
    public List<VistLogBean> getAllVistLog();
    public void insertVistLog(VistLogBean bean);
    public long getVistLogsCount();
    public List<VistLogBean> limit(Pager pager);
    public long getIpVistCounts(String ip);
    public void deleteAll();

}
