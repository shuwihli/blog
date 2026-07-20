package com.user.ShuLoveLi.SystemControl.Mapper;

import com.user.ShuLoveLi.SystemControl.Domain.ArtCommon.ArtCommon;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ArticleCommonMapper {
    int insertArtCommon(ArtCommon artCommon);
    List<ArtCommon> getAllArtCommons(ArtCommon artCommon);
}
