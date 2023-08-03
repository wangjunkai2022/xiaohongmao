package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.m;
import java.io.IOException;
import java.util.Map;

/* compiled from: DummyDataSource.java */
/* loaded from: classes2.dex */
public final class y implements m {

    /* renamed from: b  reason: collision with root package name */
    public static final y f27411b = new y();

    /* renamed from: c  reason: collision with root package name */
    public static final m.a f27412c = x.f27410a;

    private y() {
    }

    public static /* synthetic */ y t() {
        return new y();
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws IOException {
        throw new IOException("DummyDataSource cannot be opened");
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public /* synthetic */ Map b() {
        return l.a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() {
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void e(p0 p0Var) {
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) {
        throw new UnsupportedOperationException();
    }
}
