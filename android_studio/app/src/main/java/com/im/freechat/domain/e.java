package com.im.freechat.domain;

import com.im.freechat.shared.entities.DownloadInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* compiled from: DownloadManagerRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&JC\u0010\u0011\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH¦@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0007H&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/domain/e;", "", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "list", "Lkotlinx/coroutines/flow/i;", "b", "", "mediaId", "", k4.b.f84734a, "", "remoteUrl", "fileName", "fileSize", "", "interanalDirector", "c", "(JILjava/lang/String;Ljava/lang/String;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "d", "()[Ljava/lang/Integer;", "id", "", "a", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface e {
    void a(long j4);

    @m8.g
    kotlinx.coroutines.flow.i<List<DownloadInfo>> b(@m8.g List<DownloadInfo> list);

    @m8.h
    Object c(long j4, int i4, @m8.g String str, @m8.g String str2, long j10, boolean z9, @m8.g Continuation<? super DownloadInfo> continuation);

    @m8.g
    Integer[] d();
}
