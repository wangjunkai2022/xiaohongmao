package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Video.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jh\u0010$\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0005HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017¨\u0006+"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Video;", "", "url", "", "width", "", "height", "preview", "duration", "fileName", "fileSize", "", "mimeType", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V", "getDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFileName", "()Ljava/lang/String;", "getFileSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getHeight", "()I", "getMimeType", "getPreview", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/im/freechat/data/openapigen/models/Video;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Video {
    @h
    private final Integer duration;
    @h
    private final String fileName;
    @h
    private final Long fileSize;
    private final int height;
    @h
    private final String mimeType;
    @h
    private final String preview;
    @g
    private final String url;
    private final int width;

    public Video(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "width") int i4, @com.squareup.moshi.g(name = "height") int i10, @com.squareup.moshi.g(name = "preview") @h String str, @com.squareup.moshi.g(name = "duration") @h Integer num, @com.squareup.moshi.g(name = "file_name") @h String str2, @com.squareup.moshi.g(name = "file_size") @h Long l10, @com.squareup.moshi.g(name = "mime_type") @h String str3) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.width = i4;
        this.height = i10;
        this.preview = str;
        this.duration = num;
        this.fileName = str2;
        this.fileSize = l10;
        this.mimeType = str3;
    }

    @g
    public final String component1() {
        return this.url;
    }

    public final int component2() {
        return this.width;
    }

    public final int component3() {
        return this.height;
    }

    @h
    public final String component4() {
        return this.preview;
    }

    @h
    public final Integer component5() {
        return this.duration;
    }

    @h
    public final String component6() {
        return this.fileName;
    }

    @h
    public final Long component7() {
        return this.fileSize;
    }

    @h
    public final String component8() {
        return this.mimeType;
    }

    @g
    public final Video copy(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "width") int i4, @com.squareup.moshi.g(name = "height") int i10, @com.squareup.moshi.g(name = "preview") @h String str, @com.squareup.moshi.g(name = "duration") @h Integer num, @com.squareup.moshi.g(name = "file_name") @h String str2, @com.squareup.moshi.g(name = "file_size") @h Long l10, @com.squareup.moshi.g(name = "mime_type") @h String str3) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new Video(url, i4, i10, str, num, str2, l10, str3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Video) {
            Video video = (Video) obj;
            return Intrinsics.areEqual(this.url, video.url) && this.width == video.width && this.height == video.height && Intrinsics.areEqual(this.preview, video.preview) && Intrinsics.areEqual(this.duration, video.duration) && Intrinsics.areEqual(this.fileName, video.fileName) && Intrinsics.areEqual(this.fileSize, video.fileSize) && Intrinsics.areEqual(this.mimeType, video.mimeType);
        }
        return false;
    }

    @h
    public final Integer getDuration() {
        return this.duration;
    }

    @h
    public final String getFileName() {
        return this.fileName;
    }

    @h
    public final Long getFileSize() {
        return this.fileSize;
    }

    public final int getHeight() {
        return this.height;
    }

    @h
    public final String getMimeType() {
        return this.mimeType;
    }

    @h
    public final String getPreview() {
        return this.preview;
    }

    @g
    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int hashCode = ((((this.url.hashCode() * 31) + this.width) * 31) + this.height) * 31;
        String str = this.preview;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.duration;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.fileName;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l10 = this.fileSize;
        int hashCode5 = (hashCode4 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str3 = this.mimeType;
        return hashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    @g
    public String toString() {
        return "Video(url=" + this.url + ", width=" + this.width + ", height=" + this.height + ", preview=" + this.preview + ", duration=" + this.duration + ", fileName=" + this.fileName + ", fileSize=" + this.fileSize + ", mimeType=" + this.mimeType + ')';
    }

    public /* synthetic */ Video(String str, int i4, int i10, String str2, Integer num, String str3, Long l10, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i4, i10, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : l10, (i11 & 128) != 0 ? null : str4);
    }
}
