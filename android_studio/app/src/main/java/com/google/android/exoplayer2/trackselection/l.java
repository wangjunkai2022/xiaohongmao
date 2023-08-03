package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;

/* compiled from: TrackSelection.java */
/* loaded from: classes2.dex */
public interface l {

    /* renamed from: a  reason: collision with root package name */
    public static final int f26055a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f26056b = 10000;

    Format f(int i4);

    int g(int i4);

    int getType();

    int k(int i4);

    TrackGroup l();

    int length();

    int p(Format format);
}
