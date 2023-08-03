package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;

/* compiled from: ThumbRating.java */
/* loaded from: classes2.dex */
public final class q2 extends c2 {

    /* renamed from: k  reason: collision with root package name */
    private static final int f24510k = 3;

    /* renamed from: l  reason: collision with root package name */
    private static final int f24511l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f24512m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final h.a<q2> f24513n = p2.f24488a;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f24514i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f24515j;

    public q2() {
        this.f24514i = false;
        this.f24515j = false;
    }

    private static String d(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q2 f(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(d(0), -1) == 3);
        if (bundle.getBoolean(d(1), false)) {
            return new q2(bundle.getBoolean(d(2), false));
        }
        return new q2();
    }

    @Override // com.google.android.exoplayer2.c2
    public boolean c() {
        return this.f24514i;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof q2) {
            q2 q2Var = (q2) obj;
            return this.f24515j == q2Var.f24515j && this.f24514i == q2Var.f24514i;
        }
        return false;
    }

    public boolean g() {
        return this.f24515j;
    }

    public int hashCode() {
        return com.google.common.base.w.b(Boolean.valueOf(this.f24514i), Boolean.valueOf(this.f24515j));
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), 3);
        bundle.putBoolean(d(1), this.f24514i);
        bundle.putBoolean(d(2), this.f24515j);
        return bundle;
    }

    public q2(boolean z9) {
        this.f24514i = true;
        this.f24515j = z9;
    }
}
