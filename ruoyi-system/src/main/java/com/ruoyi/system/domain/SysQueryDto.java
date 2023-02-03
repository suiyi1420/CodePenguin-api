package com.ruoyi.system.domain;

import lombok.Data;

@Data
public class SysQueryDto {
    private Long id;
    private String keyWord;
    private String startTime;
    private String endTime;
    private String teacher;
    private Long paramId;

}
