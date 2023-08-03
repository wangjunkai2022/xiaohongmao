package com.im.freechat.data.sources.database.entities.download;

import com.im.freechat.shared.entities.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DownloadEntityMapper.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0007J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004J\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;", "", "()V", "map", "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;", "downloadInfo", "Lcom/im/freechat/shared/entities/DownloadInfo;", "", "list", "reverseMap", "downloadEntity", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class DownloadEntityMapper {
    @g
    public final DownloadEntity map(@g DownloadInfo downloadInfo) {
        Intrinsics.checkNotNullParameter(downloadInfo, "downloadInfo");
        return new DownloadEntity(downloadInfo.getChatId(), downloadInfo.getMediaId(), downloadInfo.getDownloadManagerID(), downloadInfo.getLocalPath(), downloadInfo.getRemoteUrl(), downloadInfo.getFileSize(), downloadInfo.getDownloaded(), downloadInfo.getStatus());
    }

    @g
    public final DownloadInfo reverseMap(@g DownloadEntity downloadEntity) {
        Intrinsics.checkNotNullParameter(downloadEntity, "downloadEntity");
        return new DownloadInfo(downloadEntity.getChatId(), downloadEntity.getMediaId(), downloadEntity.getDownloadManagerID(), downloadEntity.getLocalPath(), downloadEntity.getRemoteUrl(), downloadEntity.getFileSize(), downloadEntity.getDownloaded(), downloadEntity.getStatus());
    }

    @g
    public final List<DownloadEntity> map(@g List<DownloadInfo> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DownloadInfo downloadInfo : list) {
            arrayList.add(map(downloadInfo));
        }
        return arrayList;
    }

    @g
    public final List<DownloadInfo> reverseMap(@g List<DownloadEntity> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DownloadEntity downloadEntity : list) {
            arrayList.add(reverseMap(downloadEntity));
        }
        return arrayList;
    }
}
