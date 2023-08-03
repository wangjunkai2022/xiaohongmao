package com.im.freechat.data.sources.api.entities.banner;

import com.im.freechat.data.sources.api.entities.PagedListResponse;
import com.im.freechat.shared.entities.PageInfo;
import com.im.freechat.shared.entities.PagedList;
import com.im.freechat.shared.entities.banner.Banner;
import io.sentry.protocol.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: BannerResponseMapper.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¨\u0006\t"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;", "", "()V", "map", "Lcom/im/freechat/shared/entities/PagedList;", "Lcom/im/freechat/shared/entities/banner/Banner;", j.f83728f, "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;", "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class BannerResponseMapper {
    @g
    public final PagedList<Banner> map(@g PagedListResponse<BannerResponse> response) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(response, "response");
        PageInfo pageInfo = new PageInfo(response.getPageInfoResponse().getPage(), response.getPageInfoResponse().getPageNum(), response.getPageInfoResponse().getSize(), response.getPageInfoResponse().getTotalPage(), response.getPageInfoResponse().getTotalCount());
        List<BannerResponse> list = response.getList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BannerResponse bannerResponse : list) {
            arrayList.add(new Banner(bannerResponse.getId(), bannerResponse.getLink(), bannerResponse.getPath(), bannerResponse.getPathSmall(), bannerResponse.getPathBig()));
        }
        return new PagedList<>(pageInfo, arrayList);
    }
}
