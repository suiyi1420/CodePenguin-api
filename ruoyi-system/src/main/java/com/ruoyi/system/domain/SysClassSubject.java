package com.ruoyi.system.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class SysClassSubject {
    private int id;
    private Long class_id;
    private String open_time;
    private String rel_name;
    private int subject_info_id;
    private String status;

}
