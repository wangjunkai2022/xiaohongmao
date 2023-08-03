package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: LoadControl.java */
/* loaded from: classes2.dex */
public interface z0 {
    boolean a();

    long b();

    void c(e2[] e2VarArr, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.g[] gVarArr);

    boolean d(long j4, float f10, boolean z9, long j10);

    com.google.android.exoplayer2.upstream.b e();

    void f();

    boolean g(long j4, long j10, float f10);

    void onPrepared();

    void onReleased();
}
