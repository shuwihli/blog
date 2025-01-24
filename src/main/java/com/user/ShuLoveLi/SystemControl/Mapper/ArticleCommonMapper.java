package com.user.ShuLoveLi.SystemControl.Mapper;

import com.user.ShuLoveLi.SystemControl.Domain.ArtCommon;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

@Mapper
public interface ArticleCommonMapper {
    int insertArtCommon(ArtCommon artCommon);
    List<ArtCommon> getAllArtCommons(Integer id);
}
