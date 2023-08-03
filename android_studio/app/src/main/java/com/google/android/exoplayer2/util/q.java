package com.google.android.exoplayer2.util;

import android.os.Looper;
import androidx.annotation.Nullable;

/* compiled from: HandlerWrapper.java */
/* loaded from: classes2.dex */
public interface q {

    /* compiled from: HandlerWrapper.java */
    /* loaded from: classes2.dex */
    public interface a {
        q a();

        void b();
    }

    boolean a(Runnable runnable, long j4);

    boolean b(int i4, int i10);

    boolean c(Runnable runnable);

    a d(int i4);

    boolean e(a aVar);

    boolean f(int i4);

    a g(int i4, int i10, int i11, @Nullable Object obj);

    a h(int i4, @Nullable Object obj);

    void i(@Nullable Object obj);

    Looper j();

    a k(int i4, int i10, int i11);

    boolean l(int i4);

    boolean m(int i4, long j4);

    void n(int i4);

    boolean post(Runnable runnable);
}
