package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Animation.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u000fJP\u0010\u001c\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0005HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006#"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Animation;", "", "url", "", "width", "", "height", "giphyId", "fileName", "fileSize", "", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getFileName", "()Ljava/lang/String;", "getFileSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getGiphyId", "getHeight", "()I", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/Animation;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Animation {
    @h
    private final String fileName;
    @h
    private final Long fileSize;
    @h
    private final String giphyId;
    private final int height;
    @g
    private final String url;
    private final int width;

    public Animation(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "width") int i4, @com.squareup.moshi.g(name = "height") int i10, @com.squareup.moshi.g(name = "giphy_id") @h String str, @com.squareup.moshi.g(name = "file_name") @h String str2, @com.squareup.moshi.g(name = "file_size") @h Long l10) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.width = i4;
        this.height = i10;
        this.giphyId = str;
        this.fileName = str2;
        this.fileSize = l10;
    }

    public static /* synthetic */ Animation copy$default(Animation animation, String str, int i4, int i10, String str2, String str3, Long l10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = animation.url;
        }
        if ((i11 & 2) != 0) {
            i4 = animation.width;
        }
        int i12 = i4;
        if ((i11 & 4) != 0) {
            i10 = animation.height;
        }
        int i13 = i10;
        if ((i11 & 8) != 0) {
            str2 = animation.giphyId;
        }
        String str4 = str2;
        if ((i11 & 16) != 0) {
            str3 = animation.fileName;
        }
        String str5 = str3;
        if ((i11 & 32) != 0) {
            l10 = animation.fileSize;
        }
        return animation.copy(str, i12, i13, str4, str5, l10);
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
        return this.giphyId;
    }

    @h
    public final String component5() {
        return this.fileName;
    }

    @h
    public final Long component6() {
        return this.fileSize;
    }

    @g
    public final Animation copy(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "width") int i4, @com.squareup.moshi.g(name = "height") int i10, @com.squareup.moshi.g(name = "giphy_id") @h String str, @com.squareup.moshi.g(name = "file_name") @h String str2, @com.squareup.moshi.g(name = "file_size") @h Long l10) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new Animation(url, i4, i10, str, str2, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Animation) {
            Animation animation = (Animation) obj;
            return Intrinsics.areEqual(this.url, animation.url) && this.width == animation.width && this.height == animation.height && Intrinsics.areEqual(this.giphyId, animation.giphyId) && Intrinsics.areEqual(this.fileName, animation.fileName) && Intrinsics.areEqual(this.fileSize, animation.fileSize);
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

    @h
    public final String getGiphyId() {
        return this.giphyId;
    }

    public final int getHeight() {
        return this.height;
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
        String str = this.giphyId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.fileName;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l10 = this.fileSize;
        return hashCode3 + (l10 != null ? l10.hashCode() : 0);
    }

    @g
    public String toString() {
        return "Animation(url=" + this.url + ", width=" + this.width + ", height=" + this.height + ", giphyId=" + this.giphyId + ", fileName=" + this.fileName + ", fileSize=" + this.fileSize + ')';
    }

    public /* synthetic */ Animation(String str, int i4, int i10, String str2, String str3, Long l10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i4, i10, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : l10);
    }
}
