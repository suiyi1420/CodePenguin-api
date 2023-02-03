package com.ruoyi.system.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.controller.BaseController;
import lombok.Data;

import java.util.Date;
@Data
public class SysSubject {
    private Long subject_id;
    private Long subject_type_id;
    private String subject_name;
    private String subject_context;

    private int class_time;
    private String status;

    private String image;


}
