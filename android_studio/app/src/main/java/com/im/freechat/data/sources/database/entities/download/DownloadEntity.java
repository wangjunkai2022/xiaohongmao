package com.im.freechat.data.sources.database.entities.download;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DownloadEntity.kt */
@Entity(primaryKeys = {"media_id", "chat_id"}, tableName = "download")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0016\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;", "", b.f84734a, "", "mediaId", "", "downloadManagerID", "localPath", "", "remoteUrl", "fileSize", "downloaded", "status", "(IJJLjava/lang/String;Ljava/lang/String;JJI)V", "getChatId", "()I", "getDownloadManagerID", "()J", "getDownloaded", "getFileSize", "getLocalPath", "()Ljava/lang/String;", "getMediaId", "getRemoteUrl", "getStatus", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class DownloadEntity {
    @ColumnInfo(name = "chat_id")
    private final int chatId;
    @ColumnInfo(name = "download_manager_id")
    private final long downloadManagerID;
    @ColumnInfo(name = "downloaded")
    private final long downloaded;
    @ColumnInfo(name = "file_size")
    private final long fileSize;
    @g
    @ColumnInfo(name = "local_path")
    private final String localPath;
    @ColumnInfo(name = "media_id")
    private final long mediaId;
    @g
    @ColumnInfo(name = "remote_url")
    private final String remoteUrl;
    @ColumnInfo(name = "status")
    private final int status;

    public DownloadEntity(int i4, long j4, long j10, @g String localPath, @g String remoteUrl, long j11, long j12, int i10) {
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        this.chatId = i4;
        this.mediaId = j4;
        this.downloadManagerID = j10;
        this.localPath = localPath;
        this.remoteUrl = remoteUrl;
        this.fileSize = j11;
        this.downloaded = j12;
        this.status = i10;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final long getDownloadManagerID() {
        return this.downloadManagerID;
    }

    public final long getDownloaded() {
        return this.downloaded;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    @g
    public final String getLocalPath() {
        return this.localPath;
    }

    public final long getMediaId() {
        return this.mediaId;
    }

    @g
    public final String getRemoteUrl() {
        return this.remoteUrl;
    }

    public final int getStatus() {
        return this.status;
    }
}
