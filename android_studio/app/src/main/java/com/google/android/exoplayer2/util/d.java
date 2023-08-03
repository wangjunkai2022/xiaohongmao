package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* compiled from: Clock.java */
/* loaded from: classes2.dex */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f27523a = new r0();

    long a();

    long b();

    long c();

    q d(Looper looper, @Nullable Handler.Callback callback);

    void e();
}
