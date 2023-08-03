package com.giphy.sdk.ui.drawables;

import kotlin.Metadata;
import m8.g;

/* compiled from: ImageFormat.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006j\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/giphy/sdk/ui/drawables/ImageFormat;", "", "", "a", "Ljava/lang/String;", "getMimeType", "()Ljava/lang/String;", "mimeType", "b", "getExtension", "extension", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "WEBP", "GIF", "MP4", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public enum ImageFormat {
    WEBP(MimeType.IMAGE_WEBP.getValue(), "webp"),
    GIF(MimeType.IMAGE_GIF.getValue(), "gif"),
    MP4(MimeType.IMAGE_MP4.getValue(), "mp4");
    
    @g

    /* renamed from: a  reason: collision with root package name */
    private final String f17033a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final String f17034b;

    ImageFormat(String str, String str2) {
        this.f17033a = str;
        this.f17034b = str2;
    }

    @g
    public final String getExtension() {
        return this.f17034b;
    }

    @g
    public final String getMimeType() {
        return this.f17033a;
    }
}
