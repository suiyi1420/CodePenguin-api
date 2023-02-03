package com.ruoyi.system.domain;

import lombok.Data;

@Data
public class SysSubjectInfo {
    private Long subject_info_id;
    private Long subject_id;
    private String name;
    private String context;
    private String knowledge;
    private String update_text;
    private int knowledge_num;
    private int planned_time;
    private String status;



}
