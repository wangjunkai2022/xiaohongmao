package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* compiled from: LoadErrorHandlingPolicy.java */
/* loaded from: classes2.dex */
public interface f0 {

    /* compiled from: LoadErrorHandlingPolicy.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.o f27235a;

        /* renamed from: b  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.s f27236b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f27237c;

        /* renamed from: d  reason: collision with root package name */
        public final int f27238d;

        public a(com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar, IOException iOException, int i4) {
            this.f27235a = oVar;
            this.f27236b = sVar;
            this.f27237c = iOException;
            this.f27238d = i4;
        }
    }

    long a(a aVar);

    @Deprecated
    long b(int i4, long j4, IOException iOException, int i10);

    long c(a aVar);

    int d(int i4);

    @Deprecated
    long e(int i4, long j4, IOException iOException, int i10);

    void f(long j4);
}
