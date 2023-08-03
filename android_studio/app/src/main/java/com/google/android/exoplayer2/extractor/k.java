package com.google.android.exoplayer2.extractor;

import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Extractor.java */
/* loaded from: classes2.dex */
public interface k {

    /* renamed from: a  reason: collision with root package name */
    public static final int f22331a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f22332b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f22333c = -1;

    /* compiled from: Extractor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    void a(long j4, long j10);

    boolean b(l lVar) throws IOException;

    int c(l lVar, z zVar) throws IOException;

    void d(m mVar);

    void release();
}
