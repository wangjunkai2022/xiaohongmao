package com.im.freechat.shared.entities;

import com.qennnsad.aknkaksd.data.repository.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: FileInfo.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/im/freechat/shared/entities/FileInfo;", "", "uri", "", "mimeType", f.f47745b, "", "(Ljava/lang/String;Ljava/lang/String;J)V", "getMimeType", "()Ljava/lang/String;", "getSize", "()J", "getUri", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FileInfo {
    @g
    private final String mimeType;
    private final long size;
    @g
    private final String uri;

    public FileInfo(@g String uri, @g String mimeType, long j4) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        this.uri = uri;
        this.mimeType = mimeType;
        this.size = j4;
    }

    @g
    public final String getMimeType() {
        return this.mimeType;
    }

    public final long getSize() {
        return this.size;
    }

    @g
    public final String getUri() {
        return this.uri;
    }
}
