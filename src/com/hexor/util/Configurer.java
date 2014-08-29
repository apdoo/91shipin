package com.hexor.util;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
/**
 * 自定义PropertyPlaceholderConfigurer返回properties内容
 * service-context.xml 中配置了加载的properties文件
 */
public class Configurer extends
        PropertyPlaceholderConfigurer {
  
    private static Map<String, Object> ctxPropertiesMap;  
  
    @Override  
    protected void processProperties(  
            ConfigurableListableBeanFactory beanFactoryToProcess,
            Properties props) throws BeansException {
        super.processProperties(beanFactoryToProcess, props);  
        ctxPropertiesMap = new HashMap<String, Object>();  
        for (Object key : props.keySet()) {  
            String keyStr = key.toString();  
            String value = props.getProperty(keyStr);  
            ctxPropertiesMap.put(keyStr, value);  
        }  
    }  
  
    public static Object getContextProperty(String name) {  
        return ctxPropertiesMap.get(name);  
    }  
  
}  
