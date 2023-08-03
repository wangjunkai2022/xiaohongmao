package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Photo.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0010J\\\u0010\u001f\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013¨\u0006&"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Photo;", "", "url", "", "width", "", "height", "preview", "mimeType", "fileName", "fileSize", "", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getFileName", "()Ljava/lang/String;", "getFileSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getHeight", "()I", "getMimeType", "getPreview", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/Photo;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Photo {
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

    public Photo(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "width") int i4, @com.squareup.moshi.g(name = "height") int i10, @com.squareup.moshi.g(name = "preview") @h String str, @com.squareup.moshi.g(name = "mime_type") @h String str2, @com.squareup.moshi.g(name = "file_name") @h String str3, @com.squareup.moshi.g(name = "file_size") @h Long l10) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.width = i4;
        this.height = i10;
        this.preview = str;
        this.mimeType = str2;
        this.fileName = str3;
        this.fileSize = l10;
    }

    public static /* synthetic */ Photo copy$default(Photo photo, String str, int i4, int i10, String str2, String str3, String str4, Long l10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = photo.url;
        }
        if ((i11 & 2) != 0) {
            i4 = photo.width;
        }
        int i12 = i4;
        if ((i11 & 4) != 0) {
            i10 = photo.height;
        }
        int i13 = i10;
        if ((i11 & 8) != 0) {
            str2 = photo.preview;
        }
        String str5 = str2;
        if ((i11 & 16) != 0) {
            str3 = photo.mimeType;
        }
        String str6 = str3;
        if ((i11 & 32) != 0) {
            str4 = photo.fileName;
        }
        String str7 = str4;
        if ((i11 & 64) != 0) {
            l10 = photo.fileSize;
        }
        return photo.copy(str, i12, i13, str5, str6, str7, l10);
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
    public final String component5() {
        return this.mimeType;
    }

    @h
    public final String component6() {
        return this.fileName;
    }

    @h
    public final Long component7() {
        return this.fileSize;
    }

    @g
    public final Photo copy(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "width") int i4, @com.squareup.moshi.g(name = "height") int i10, @com.squareup.moshi.g(name = "preview") @h String str, @com.squareup.moshi.g(name = "mime_type") @h String str2, @com.squareup.moshi.g(name = "file_name") @h String str3, @com.squareup.moshi.g(name = "file_size") @h Long l10) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new Photo(url, i4, i10, str, str2, str3, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Photo) {
            Photo photo = (Photo) obj;
            return Intrinsics.areEqual(this.url, photo.url) && this.width == photo.width && this.height == photo.height && Intrinsics.areEqual(this.preview, photo.preview) && Intrinsics.areEqual(this.mimeType, photo.mimeType) && Intrinsics.areEqual(this.fileName, photo.fileName) && Intrinsics.areEqual(this.fileSize, photo.fileSize);
        }
        return false;
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
        String str2 = this.mimeType;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.fileName;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l10 = this.fileSize;
        return hashCode4 + (l10 != null ? l10.hashCode() : 0);
    }

    @g
    public String toString() {
        return "Photo(url=" + this.url + ", width=" + this.width + ", height=" + this.height + ", preview=" + this.preview + ", mimeType=" + this.mimeType + ", fileName=" + this.fileName + ", fileSize=" + this.fileSize + ')';
    }

    public /* synthetic */ Photo(String str, int i4, int i10, String str2, String str3, String str4, Long l10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i4, i10, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : l10);
    }
}
