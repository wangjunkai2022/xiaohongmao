package com.google.android.exoplayer2.ui;

import androidx.annotation.Nullable;

/* compiled from: TimeBar.java */
/* loaded from: classes2.dex */
public interface u0 {

    /* compiled from: TimeBar.java */
    /* loaded from: classes2.dex */
    public interface a {
        void d(u0 u0Var, long j4);

        void x(u0 u0Var, long j4, boolean z9);

        void y(u0 u0Var, long j4);
    }

    void a(a aVar);

    void b(a aVar);

    void c(@Nullable long[] jArr, @Nullable boolean[] zArr, int i4);

    long getPreferredUpdateDelay();

    void setBufferedPosition(long j4);

    void setDuration(long j4);

    void setEnabled(boolean z9);

    void setKeyCountIncrement(int i4);

    void setKeyTimeIncrement(long j4);

    void setPosition(long j4);
}
