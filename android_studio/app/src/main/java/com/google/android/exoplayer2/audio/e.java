package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.util.z0;

/* compiled from: AudioAttributes.java */
/* loaded from: classes2.dex */
public final class e implements com.google.android.exoplayer2.h {

    /* renamed from: g  reason: collision with root package name */
    private static final int f21186g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f21187h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f21188i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f21189j = 3;

    /* renamed from: a  reason: collision with root package name */
    public final int f21191a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21192b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21193c;

    /* renamed from: d  reason: collision with root package name */
    public final int f21194d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private AudioAttributes f21195e;

    /* renamed from: f  reason: collision with root package name */
    public static final e f21185f = new b().a();

    /* renamed from: k  reason: collision with root package name */
    public static final h.a<e> f21190k = d.f21182a;

    /* compiled from: AudioAttributes.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private int f21196a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f21197b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f21198c = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f21199d = 1;

        public e a() {
            return new e(this.f21196a, this.f21197b, this.f21198c, this.f21199d);
        }

        public b b(int i4) {
            this.f21199d = i4;
            return this;
        }

        public b c(int i4) {
            this.f21196a = i4;
            return this;
        }

        public b d(int i4) {
            this.f21197b = i4;
            return this;
        }

        public b e(int i4) {
            this.f21198c = i4;
            return this;
        }
    }

    private static String c(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e d(Bundle bundle) {
        b bVar = new b();
        if (bundle.containsKey(c(0))) {
            bVar.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            bVar.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            bVar.e(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            bVar.b(bundle.getInt(c(3)));
        }
        return bVar.a();
    }

    @RequiresApi(21)
    public AudioAttributes b() {
        if (this.f21195e == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f21191a).setFlags(this.f21192b).setUsage(this.f21193c);
            if (z0.f27743a >= 29) {
                usage.setAllowedCapturePolicy(this.f21194d);
            }
            this.f21195e = usage.build();
        }
        return this.f21195e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f21191a == eVar.f21191a && this.f21192b == eVar.f21192b && this.f21193c == eVar.f21193c && this.f21194d == eVar.f21194d;
    }

    public int hashCode() {
        return ((((((527 + this.f21191a) * 31) + this.f21192b) * 31) + this.f21193c) * 31) + this.f21194d;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.f21191a);
        bundle.putInt(c(1), this.f21192b);
        bundle.putInt(c(2), this.f21193c);
        bundle.putInt(c(3), this.f21194d);
        return bundle;
    }

    private e(int i4, int i10, int i11, int i12) {
        this.f21191a = i4;
        this.f21192b = i10;
        this.f21193c = i11;
        this.f21194d = i12;
    }
}
