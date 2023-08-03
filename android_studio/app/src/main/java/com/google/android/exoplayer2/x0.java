package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;

/* compiled from: HeartRating.java */
/* loaded from: classes2.dex */
public final class x0 extends c2 {

    /* renamed from: k  reason: collision with root package name */
    private static final int f28135k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final int f28136l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f28137m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final h.a<x0> f28138n = w0.f28127a;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f28139i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f28140j;

    public x0() {
        this.f28139i = false;
        this.f28140j = false;
    }

    private static String d(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static x0 f(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(d(0), -1) == 0);
        if (bundle.getBoolean(d(1), false)) {
            return new x0(bundle.getBoolean(d(2), false));
        }
        return new x0();
    }

    @Override // com.google.android.exoplayer2.c2
    public boolean c() {
        return this.f28139i;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof x0) {
            x0 x0Var = (x0) obj;
            return this.f28140j == x0Var.f28140j && this.f28139i == x0Var.f28139i;
        }
        return false;
    }

    public boolean g() {
        return this.f28140j;
    }

    public int hashCode() {
        return com.google.common.base.w.b(Boolean.valueOf(this.f28139i), Boolean.valueOf(this.f28140j));
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), 0);
        bundle.putBoolean(d(1), this.f28139i);
        bundle.putBoolean(d(2), this.f28140j);
        return bundle;
    }

    public x0(boolean z9) {
        this.f28139i = true;
        this.f28140j = z9;
    }
}
