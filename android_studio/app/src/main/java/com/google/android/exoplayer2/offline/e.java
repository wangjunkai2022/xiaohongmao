package com.google.android.exoplayer2.offline;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Download.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: i  reason: collision with root package name */
    public static final int f24320i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f24321j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f24322k = 2;

    /* renamed from: l  reason: collision with root package name */
    public static final int f24323l = 3;

    /* renamed from: m  reason: collision with root package name */
    public static final int f24324m = 4;

    /* renamed from: n  reason: collision with root package name */
    public static final int f24325n = 5;

    /* renamed from: o  reason: collision with root package name */
    public static final int f24326o = 7;

    /* renamed from: p  reason: collision with root package name */
    public static final int f24327p = 0;

    /* renamed from: q  reason: collision with root package name */
    public static final int f24328q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f24329r = 0;

    /* renamed from: a  reason: collision with root package name */
    public final DownloadRequest f24330a;

    /* renamed from: b  reason: collision with root package name */
    public final int f24331b;

    /* renamed from: c  reason: collision with root package name */
    public final long f24332c;

    /* renamed from: d  reason: collision with root package name */
    public final long f24333d;

    /* renamed from: e  reason: collision with root package name */
    public final long f24334e;

    /* renamed from: f  reason: collision with root package name */
    public final int f24335f;

    /* renamed from: g  reason: collision with root package name */
    public final int f24336g;

    /* renamed from: h  reason: collision with root package name */
    final u f24337h;

    /* compiled from: Download.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: Download.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    public e(DownloadRequest downloadRequest, int i4, long j4, long j10, long j11, int i10, int i11) {
        this(downloadRequest, i4, j4, j10, j11, i10, i11, new u());
    }

    public long a() {
        return this.f24337h.f24429a;
    }

    public float b() {
        return this.f24337h.f24430b;
    }

    public boolean c() {
        int i4 = this.f24331b;
        return i4 == 3 || i4 == 4;
    }

    public e(DownloadRequest downloadRequest, int i4, long j4, long j10, long j11, int i10, int i11, u uVar) {
        com.google.android.exoplayer2.util.a.g(uVar);
        boolean z9 = true;
        com.google.android.exoplayer2.util.a.a((i11 == 0) == (i4 != 4));
        if (i10 != 0) {
            com.google.android.exoplayer2.util.a.a((i4 == 2 || i4 == 0) ? false : false);
        }
        this.f24330a = downloadRequest;
        this.f24331b = i4;
        this.f24332c = j4;
        this.f24333d = j10;
        this.f24334e = j11;
        this.f24335f = i10;
        this.f24336g = i11;
        this.f24337h = uVar;
    }
}
