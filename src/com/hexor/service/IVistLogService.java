package com.hexor.service;

import com.hexor.repo.Pager;
import com.hexor.repo.VistLogBean;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-11
 * Time: 下午3:32
 * To change this template use File | Settings | File Templates.
 */
public interface IVistLogService {
    public List<VistLogBean> getAllVistLog();
    public void insertVistLog(VistLogBean bean);
    public long getVistLogsCount();
    public List<VistLogBean> limit(Pager pager);

}
