package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.l;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: EbmlProcessor.java */
/* loaded from: classes2.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f22351a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f22352b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f22353c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f22354d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f22355e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final int f22356f = 5;

    /* compiled from: EbmlProcessor.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    void a(int i4) throws ParserException;

    void b(int i4, double d4) throws ParserException;

    void c(int i4, long j4) throws ParserException;

    int d(int i4);

    boolean e(int i4);

    void f(int i4, int i10, l lVar) throws IOException;

    void g(int i4, String str) throws ParserException;

    void h(int i4, long j4, long j10) throws ParserException;
}
