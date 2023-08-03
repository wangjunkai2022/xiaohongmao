package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.a;
import com.google.auto.value.AutoValue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventStoreConfig.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: b  reason: collision with root package name */
    private static final int f20593b = 200;

    /* renamed from: c  reason: collision with root package name */
    private static final int f20594c = 10000;

    /* renamed from: a  reason: collision with root package name */
    private static final long f20592a = 10485760;

    /* renamed from: d  reason: collision with root package name */
    private static final long f20595d = 604800000;

    /* renamed from: e  reason: collision with root package name */
    private static final int f20596e = 81920;

    /* renamed from: f  reason: collision with root package name */
    static final d f20597f = a().f(f20592a).d(200).b(10000).c(f20595d).e(f20596e).a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventStoreConfig.java */
    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        abstract d a();

        abstract a b(int i4);

        abstract a c(long j4);

        abstract a d(int i4);

        abstract a e(int i4);

        abstract a f(long j4);
    }

    static a a() {
        return new a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long f();

    a g() {
        return a().f(f()).d(d()).b(b()).c(c()).e(e());
    }
}
