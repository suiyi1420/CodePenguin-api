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
    private String url;
    private int type;//0.编程小节 1.视频小节 2.课程视频 3.课件
    private String pdf_url;
    private int save_file_type;//自动保存类型：0：所有小节一个文件；1：一小节一文件



}
