package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: CacheSpan.java */
/* loaded from: classes2.dex */
public class j implements Comparable<j> {

    /* renamed from: a  reason: collision with root package name */
    public final String f27105a;

    /* renamed from: b  reason: collision with root package name */
    public final long f27106b;

    /* renamed from: c  reason: collision with root package name */
    public final long f27107c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f27108d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final File f27109e;

    /* renamed from: f  reason: collision with root package name */
    public final long f27110f;

    public j(String str, long j4, long j10) {
        this(str, j4, j10, com.google.android.exoplayer2.i.f23649b, null);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(j jVar) {
        if (!this.f27105a.equals(jVar.f27105a)) {
            return this.f27105a.compareTo(jVar.f27105a);
        }
        int i4 = ((this.f27106b - jVar.f27106b) > 0L ? 1 : ((this.f27106b - jVar.f27106b) == 0L ? 0 : -1));
        if (i4 == 0) {
            return 0;
        }
        return i4 < 0 ? -1 : 1;
    }

    public boolean b() {
        return !this.f27108d;
    }

    public boolean c() {
        return this.f27107c == -1;
    }

    public String toString() {
        long j4 = this.f27106b;
        long j10 = this.f27107c;
        StringBuilder sb = new StringBuilder(44);
        sb.append("[");
        sb.append(j4);
        sb.append(", ");
        sb.append(j10);
        sb.append("]");
        return sb.toString();
    }

    public j(String str, long j4, long j10, long j11, @Nullable File file) {
        this.f27105a = str;
        this.f27106b = j4;
        this.f27107c = j10;
        this.f27108d = file != null;
        this.f27109e = file;
        this.f27110f = j11;
    }
}
