package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Document.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J<\u0010\u0014\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\n¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Document;", "", "url", "", "fileName", "fileSize", "", "mimeType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V", "getFileName", "()Ljava/lang/String;", "getFileSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getMimeType", "getUrl", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/im/freechat/data/openapigen/models/Document;", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Document {
    @h
    private final String fileName;
    @h
    private final Long fileSize;
    @h
    private final String mimeType;
    @g
    private final String url;

    public Document(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "file_name") @h String str, @com.squareup.moshi.g(name = "file_size") @h Long l10, @com.squareup.moshi.g(name = "mime_type") @h String str2) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.fileName = str;
        this.fileSize = l10;
        this.mimeType = str2;
    }

    public static /* synthetic */ Document copy$default(Document document, String str, String str2, Long l10, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = document.url;
        }
        if ((i4 & 2) != 0) {
            str2 = document.fileName;
        }
        if ((i4 & 4) != 0) {
            l10 = document.fileSize;
        }
        if ((i4 & 8) != 0) {
            str3 = document.mimeType;
        }
        return document.copy(str, str2, l10, str3);
    }

    @g
    public final String component1() {
        return this.url;
    }

    @h
    public final String component2() {
        return this.fileName;
    }

    @h
    public final Long component3() {
        return this.fileSize;
    }

    @h
    public final String component4() {
        return this.mimeType;
    }

    @g
    public final Document copy(@com.squareup.moshi.g(name = "url") @g String url, @com.squareup.moshi.g(name = "file_name") @h String str, @com.squareup.moshi.g(name = "file_size") @h Long l10, @com.squareup.moshi.g(name = "mime_type") @h String str2) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new Document(url, str, l10, str2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Document) {
            Document document = (Document) obj;
            return Intrinsics.areEqual(this.url, document.url) && Intrinsics.areEqual(this.fileName, document.fileName) && Intrinsics.areEqual(this.fileSize, document.fileSize) && Intrinsics.areEqual(this.mimeType, document.mimeType);
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
    public final String getMimeType() {
        return this.mimeType;
    }

    @g
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = this.url.hashCode() * 31;
        String str = this.fileName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l10 = this.fileSize;
        int hashCode3 = (hashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str2 = this.mimeType;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @g
    public String toString() {
        return "Document(url=" + this.url + ", fileName=" + this.fileName + ", fileSize=" + this.fileSize + ", mimeType=" + this.mimeType + ')';
    }

    public /* synthetic */ Document(String str, String str2, Long l10, String str3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : l10, (i4 & 8) != 0 ? null : str3);
    }
}
