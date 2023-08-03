package com.google.android.exoplayer2.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: CaptionStyleCompat.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: g  reason: collision with root package name */
    public static final int f26353g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f26354h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f26355i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f26356j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f26357k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f26358l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final e f26359m = new e(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* renamed from: a  reason: collision with root package name */
    public final int f26360a;

    /* renamed from: b  reason: collision with root package name */
    public final int f26361b;

    /* renamed from: c  reason: collision with root package name */
    public final int f26362c;

    /* renamed from: d  reason: collision with root package name */
    public final int f26363d;

    /* renamed from: e  reason: collision with root package name */
    public final int f26364e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Typeface f26365f;

    /* compiled from: CaptionStyleCompat.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public e(int i4, int i10, int i11, int i12, int i13, @Nullable Typeface typeface) {
        this.f26360a = i4;
        this.f26361b = i10;
        this.f26362c = i11;
        this.f26363d = i12;
        this.f26364e = i13;
        this.f26365f = typeface;
    }

    @RequiresApi(19)
    public static e a(CaptioningManager.CaptionStyle captionStyle) {
        if (com.google.android.exoplayer2.util.z0.f27743a >= 21) {
            return c(captionStyle);
        }
        return b(captionStyle);
    }

    @RequiresApi(19)
    private static e b(CaptioningManager.CaptionStyle captionStyle) {
        return new e(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    @RequiresApi(21)
    private static e c(CaptioningManager.CaptionStyle captionStyle) {
        return new e(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f26359m.f26360a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f26359m.f26361b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f26359m.f26362c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f26359m.f26363d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f26359m.f26364e, captionStyle.getTypeface());
    }
}
