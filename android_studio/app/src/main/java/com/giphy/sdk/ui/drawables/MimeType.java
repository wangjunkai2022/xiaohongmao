package com.giphy.sdk.ui.drawables;

import com.google.android.exoplayer2.util.a0;
import kotlin.Metadata;
import m8.g;

/* compiled from: MimeType.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/giphy/sdk/ui/drawables/MimeType;", "", "", "a", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "VIDEO_MP4", "IMAGE_GIF", "IMAGE_MP4", "IMAGE_WEBP", "IMAGE_JPG", "IMAGE_JPEG", "IMAGE_PNG", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public enum MimeType {
    VIDEO_MP4(a0.f27441f),
    IMAGE_GIF(a0.f27441f),
    IMAGE_MP4(a0.f27441f),
    IMAGE_WEBP(a0.f27441f),
    IMAGE_JPG(a0.f27441f),
    IMAGE_JPEG(a0.f27441f),
    IMAGE_PNG(a0.f27441f);
    
    @g

    /* renamed from: a  reason: collision with root package name */
    private final String f17036a;

    MimeType(String str) {
        this.f17036a = str;
    }

    @g
    public final String getValue() {
        return this.f17036a;
    }
}
