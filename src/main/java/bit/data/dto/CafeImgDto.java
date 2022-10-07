package bit.data.dto;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class CafeImgDto {
    private int ci_id;
    private int cf_id;
    private String ci_nm;
    private String ci_path;
    private Timestamp w_date;
    private int fd_id;
    private int cm_id;
}
