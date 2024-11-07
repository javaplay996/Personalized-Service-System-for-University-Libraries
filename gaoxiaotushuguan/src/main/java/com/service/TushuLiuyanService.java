package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TushuLiuyanEntity;
import java.util.Map;

/**
 * 图书留言 服务类
 * @author 
 * @since 2021-04-17
 */
public interface TushuLiuyanService extends IService<TushuLiuyanEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
}