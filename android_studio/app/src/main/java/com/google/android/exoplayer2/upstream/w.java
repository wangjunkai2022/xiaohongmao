package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.f0;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: DefaultLoadErrorHandlingPolicy.java */
/* loaded from: classes2.dex */
public class w implements f0 {

    /* renamed from: b  reason: collision with root package name */
    public static final int f27405b = 3;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27406c = 6;

    /* renamed from: d  reason: collision with root package name */
    public static final long f27407d = 60000;

    /* renamed from: e  reason: collision with root package name */
    private static final int f27408e = -1;

    /* renamed from: a  reason: collision with root package name */
    private final int f27409a;

    public w() {
        this(-1);
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public long a(f0.a aVar) {
        IOException iOException = aVar.f27237c;
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource.CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException)) ? com.google.android.exoplayer2.i.f23649b : Math.min((aVar.f27238d - 1) * 1000, 5000);
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public /* synthetic */ long b(int i4, long j4, IOException iOException, int i10) {
        return e0.a(this, i4, j4, iOException, i10);
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public long c(f0.a aVar) {
        IOException iOException = aVar.f27237c;
        if (iOException instanceof HttpDataSource.InvalidResponseCodeException) {
            int i4 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode;
            return (i4 == 403 || i4 == 404 || i4 == 410 || i4 == 416 || i4 == 500 || i4 == 503) ? f27407d : com.google.android.exoplayer2.i.f23649b;
        }
        return com.google.android.exoplayer2.i.f23649b;
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public int d(int i4) {
        int i10 = this.f27409a;
        return i10 == -1 ? i4 == 7 ? 6 : 3 : i10;
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public /* synthetic */ long e(int i4, long j4, IOException iOException, int i10) {
        return e0.c(this, i4, j4, iOException, i10);
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public /* synthetic */ void f(long j4) {
        e0.e(this, j4);
    }

    public w(int i4) {
        this.f27409a = i4;
    }
}
