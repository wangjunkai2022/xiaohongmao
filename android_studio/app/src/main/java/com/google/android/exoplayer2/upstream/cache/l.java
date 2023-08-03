package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedContent.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: f  reason: collision with root package name */
    private static final String f27122f = "CachedContent";

    /* renamed from: a  reason: collision with root package name */
    public final int f27123a;

    /* renamed from: b  reason: collision with root package name */
    public final String f27124b;

    /* renamed from: c  reason: collision with root package name */
    private final TreeSet<w> f27125c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<a> f27126d;

    /* renamed from: e  reason: collision with root package name */
    private r f27127e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CachedContent.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f27128a;

        /* renamed from: b  reason: collision with root package name */
        public final long f27129b;

        public a(long j4, long j10) {
            this.f27128a = j4;
            this.f27129b = j10;
        }

        public boolean a(long j4, long j10) {
            long j11 = this.f27129b;
            if (j11 == -1) {
                return j4 >= this.f27128a;
            } else if (j10 == -1) {
                return false;
            } else {
                long j12 = this.f27128a;
                return j12 <= j4 && j4 + j10 <= j12 + j11;
            }
        }

        public boolean b(long j4, long j10) {
            long j11 = this.f27128a;
            if (j11 > j4) {
                return j10 == -1 || j4 + j10 > j11;
            }
            long j12 = this.f27129b;
            return j12 == -1 || j11 + j12 > j4;
        }
    }

    public l(int i4, String str) {
        this(i4, str, r.f27179f);
    }

    public void a(w wVar) {
        this.f27125c.add(wVar);
    }

    public boolean b(q qVar) {
        r rVar = this.f27127e;
        r g4 = rVar.g(qVar);
        this.f27127e = g4;
        return !g4.equals(rVar);
    }

    public long c(long j4, long j10) {
        com.google.android.exoplayer2.util.a.a(j4 >= 0);
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        w e4 = e(j4, j10);
        if (e4.b()) {
            return -Math.min(e4.c() ? Long.MAX_VALUE : e4.f27107c, j10);
        }
        long j11 = j4 + j10;
        long j12 = j11 >= 0 ? j11 : Long.MAX_VALUE;
        long j13 = e4.f27106b + e4.f27107c;
        if (j13 < j12) {
            for (w wVar : this.f27125c.tailSet(e4, false)) {
                long j14 = wVar.f27106b;
                if (j14 > j13) {
                    break;
                }
                j13 = Math.max(j13, j14 + wVar.f27107c);
                if (j13 >= j12) {
                    break;
                }
            }
        }
        return Math.min(j13 - j4, j10);
    }

    public r d() {
        return this.f27127e;
    }

    public w e(long j4, long j10) {
        w h4 = w.h(this.f27124b, j4);
        w floor = this.f27125c.floor(h4);
        if (floor == null || floor.f27106b + floor.f27107c <= j4) {
            w ceiling = this.f27125c.ceiling(h4);
            if (ceiling != null) {
                long j11 = ceiling.f27106b - j4;
                j10 = j10 == -1 ? j11 : Math.min(j11, j10);
            }
            return w.g(this.f27124b, j4, j10);
        }
        return floor;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f27123a == lVar.f27123a && this.f27124b.equals(lVar.f27124b) && this.f27125c.equals(lVar.f27125c) && this.f27127e.equals(lVar.f27127e);
    }

    public TreeSet<w> f() {
        return this.f27125c;
    }

    public boolean g() {
        return this.f27125c.isEmpty();
    }

    public boolean h(long j4, long j10) {
        for (int i4 = 0; i4 < this.f27126d.size(); i4++) {
            if (this.f27126d.get(i4).a(j4, j10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f27123a * 31) + this.f27124b.hashCode()) * 31) + this.f27127e.hashCode();
    }

    public boolean i() {
        return this.f27126d.isEmpty();
    }

    public boolean j(long j4, long j10) {
        for (int i4 = 0; i4 < this.f27126d.size(); i4++) {
            if (this.f27126d.get(i4).b(j4, j10)) {
                return false;
            }
        }
        this.f27126d.add(new a(j4, j10));
        return true;
    }

    public boolean k(j jVar) {
        if (this.f27125c.remove(jVar)) {
            File file = jVar.f27109e;
            if (file != null) {
                file.delete();
                return true;
            }
            return true;
        }
        return false;
    }

    public w l(w wVar, long j4, boolean z9) {
        com.google.android.exoplayer2.util.a.i(this.f27125c.remove(wVar));
        File file = (File) com.google.android.exoplayer2.util.a.g(wVar.f27109e);
        if (z9) {
            File i4 = w.i((File) com.google.android.exoplayer2.util.a.g(file.getParentFile()), this.f27123a, wVar.f27106b, j4);
            if (file.renameTo(i4)) {
                file = i4;
            } else {
                String valueOf = String.valueOf(file);
                String valueOf2 = String.valueOf(i4);
                StringBuilder sb = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
                sb.append("Failed to rename ");
                sb.append(valueOf);
                sb.append(" to ");
                sb.append(valueOf2);
                com.google.android.exoplayer2.util.w.n(f27122f, sb.toString());
            }
        }
        w d4 = wVar.d(file, j4);
        this.f27125c.add(d4);
        return d4;
    }

    public void m(long j4) {
        for (int i4 = 0; i4 < this.f27126d.size(); i4++) {
            if (this.f27126d.get(i4).f27128a == j4) {
                this.f27126d.remove(i4);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public l(int i4, String str, r rVar) {
        this.f27123a = i4;
        this.f27124b = str;
        this.f27127e = rVar;
        this.f27125c = new TreeSet<>();
        this.f27126d = new ArrayList<>();
    }
}
