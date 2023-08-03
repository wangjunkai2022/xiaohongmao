package com.im.freechat.shared.entities;

import a5.a;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DownloadInfo.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J\t\u0010\u001d\u001a\u00020\bHÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003JY\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006'"}, d2 = {"Lcom/im/freechat/shared/entities/DownloadInfo;", "", b.f84734a, "", "mediaId", "", "downloadManagerID", "localPath", "", "remoteUrl", "fileSize", "downloaded", "status", "(IJJLjava/lang/String;Ljava/lang/String;JJI)V", "getChatId", "()I", "getDownloadManagerID", "()J", "getDownloaded", "getFileSize", "getLocalPath", "()Ljava/lang/String;", "getMediaId", "getRemoteUrl", "getStatus", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DownloadInfo {
    private final int chatId;
    private final long downloadManagerID;
    private final long downloaded;
    private final long fileSize;
    @g
    private final String localPath;
    private final long mediaId;
    @g
    private final String remoteUrl;
    private final int status;

    public DownloadInfo(int i4, long j4, long j10, @g String localPath, @g String remoteUrl, long j11, long j12, int i10) {
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

    public final int component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.mediaId;
    }

    public final long component3() {
        return this.downloadManagerID;
    }

    @g
    public final String component4() {
        return this.localPath;
    }

    @g
    public final String component5() {
        return this.remoteUrl;
    }

    public final long component6() {
        return this.fileSize;
    }

    public final long component7() {
        return this.downloaded;
    }

    public final int component8() {
        return this.status;
    }

    @g
    public final DownloadInfo copy(int i4, long j4, long j10, @g String localPath, @g String remoteUrl, long j11, long j12, int i10) {
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        return new DownloadInfo(i4, j4, j10, localPath, remoteUrl, j11, j12, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DownloadInfo) {
            DownloadInfo downloadInfo = (DownloadInfo) obj;
            return this.chatId == downloadInfo.chatId && this.mediaId == downloadInfo.mediaId && this.downloadManagerID == downloadInfo.downloadManagerID && Intrinsics.areEqual(this.localPath, downloadInfo.localPath) && Intrinsics.areEqual(this.remoteUrl, downloadInfo.remoteUrl) && this.fileSize == downloadInfo.fileSize && this.downloaded == downloadInfo.downloaded && this.status == downloadInfo.status;
        }
        return false;
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

    public int hashCode() {
        return (((((((((((((this.chatId * 31) + a.a(this.mediaId)) * 31) + a.a(this.downloadManagerID)) * 31) + this.localPath.hashCode()) * 31) + this.remoteUrl.hashCode()) * 31) + a.a(this.fileSize)) * 31) + a.a(this.downloaded)) * 31) + this.status;
    }

    @g
    public String toString() {
        return "DownloadInfo(chatId=" + this.chatId + ", mediaId=" + this.mediaId + ", downloadManagerID=" + this.downloadManagerID + ", localPath=" + this.localPath + ", remoteUrl=" + this.remoteUrl + ", fileSize=" + this.fileSize + ", downloaded=" + this.downloaded + ", status=" + this.status + ')';
    }
}
