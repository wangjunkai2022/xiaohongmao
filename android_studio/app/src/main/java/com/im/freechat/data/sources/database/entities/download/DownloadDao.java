package com.im.freechat.data.sources.database.entities.download;

import androidx.room.Dao;
import androidx.room.Query;
import com.im.freechat.data.sources.database.entities.BaseDao;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: DownloadDao.kt */
@Dao
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00070\u00062\n\u0010\u0005\u001a\u00020\u0003\"\u00020\u0004H'J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00070\u0006H'J\u001b\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH§@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH§@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u000eJ'\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u0007H§@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0011J!\u0010\u0012\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u0007H§@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;", "Lcom/im/freechat/data/sources/database/entities/BaseDao;", "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;", "", "", "statuses", "Lkotlinx/coroutines/flow/i;", "", "getFilesByStatuses", "getDownloads", "", "mediaId", "", "removeDownload", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDownload", "mediaIds", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeDownloads", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public abstract class DownloadDao extends BaseDao<DownloadEntity> {
    @Query("SELECT * FROM download WHERE media_id = :mediaId")
    @h
    public abstract Object getDownload(long j4, @g Continuation<? super DownloadEntity> continuation);

    @Query("SELECT * FROM download WHERE media_id IN (:mediaIds)")
    @h
    public abstract Object getDownloads(@g List<Long> list, @g Continuation<? super List<DownloadEntity>> continuation);

    @Query("SELECT * FROM download")
    @g
    public abstract i<List<DownloadEntity>> getDownloads();

    @Query("SELECT * FROM download WHERE status IN (:statuses)")
    @g
    public abstract i<List<DownloadEntity>> getFilesByStatuses(@g int... iArr);

    @Query("DELETE FROM download WHERE media_id = :mediaId")
    @h
    public abstract Object removeDownload(long j4, @g Continuation<? super Unit> continuation);

    @Query("DELETE FROM download WHERE media_id IN (:mediaIds)")
    @h
    public abstract Object removeDownloads(@g List<Long> list, @g Continuation<? super Unit> continuation);
}
