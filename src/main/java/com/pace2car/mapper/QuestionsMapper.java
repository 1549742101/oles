package com.pace2car.mapper;

import com.pace2car.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionsMapper {

    int insertShort(FspQuestions questions);

    List<TechCategory> selectTech(Integer courseId);

    int insertRadio(SmdQuestions questions);

    int insertRadioOpt(SmdOptions options);

    int insertCheckBoxOpt(SmdOptions options);

    int insertCheckBox(SmdQuestions questions);

    int insertJudge(SmdQuestions questions);

    int insertProgram(FspQuestions questions);

    List<SmdQuestions> selectBySmdQues(@Param("questions") SmdQuestions questions,
                                 @Param("pageNum") int pageNum,
                                 @Param("pageSize") int pageSize);

    List<SmdOptions> selectBySmdOpt(SmdOptions options);
}
