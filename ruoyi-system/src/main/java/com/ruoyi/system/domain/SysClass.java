package com.ruoyi.system.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class SysClass {
    private int id;
    private String class_name;
    private String class_rel_name;

    private int subject_id;
    private Long teacher_id;
    private String create_time;

    private String status;
    private Long creater_id;
    private String class_time;


}
