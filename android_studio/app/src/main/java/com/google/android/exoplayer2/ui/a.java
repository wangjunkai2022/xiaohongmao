package com.google.android.exoplayer2.ui;

import android.view.View;
import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: AdOverlayInfo.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public static final int f26336d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f26337e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f26338f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f26339g = 3;

    /* renamed from: a  reason: collision with root package name */
    public final View f26340a;

    /* renamed from: b  reason: collision with root package name */
    public final int f26341b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f26342c;

    /* compiled from: AdOverlayInfo.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.ui.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public @interface InterfaceC0186a {
    }

    public a(View view, int i4) {
        this(view, i4, null);
    }

    public a(View view, int i4, @Nullable String str) {
        this.f26340a = view;
        this.f26341b = i4;
        this.f26342c = str;
    }
}
