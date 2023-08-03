package io.sentry;

/* compiled from: SentryDate.java */
/* loaded from: classes4.dex */
public abstract class j3 implements Comparable<j3> {
    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(@m8.g j3 j3Var) {
        return Long.valueOf(d()).compareTo(Long.valueOf(j3Var.d()));
    }

    public long b(@m8.g j3 j3Var) {
        return d() - j3Var.d();
    }

    public long c(@m8.h j3 j3Var) {
        if (j3Var != null && compareTo(j3Var) < 0) {
            return j3Var.d();
        }
        return d();
    }

    public abstract long d();
}
