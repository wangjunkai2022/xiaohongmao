package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.m;

/* compiled from: FileDataSourceFactory.java */
@Deprecated
/* loaded from: classes2.dex */
public final class z implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private final FileDataSource.a f27413a;

    public z() {
        this(null);
    }

    @Override // com.google.android.exoplayer2.upstream.m.a
    /* renamed from: d */
    public FileDataSource a() {
        return this.f27413a.a();
    }

    public z(@Nullable p0 p0Var) {
        this.f27413a = new FileDataSource.a().e(p0Var);
    }
}
