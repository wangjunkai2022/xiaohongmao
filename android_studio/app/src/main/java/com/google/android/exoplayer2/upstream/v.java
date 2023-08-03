package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.HttpDataSource;

/* compiled from: DefaultHttpDataSourceFactory.java */
@Deprecated
/* loaded from: classes2.dex */
public final class v extends HttpDataSource.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f27400b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final p0 f27401c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27402d;

    /* renamed from: e  reason: collision with root package name */
    private final int f27403e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f27404f;

    public v() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.upstream.HttpDataSource.a
    /* renamed from: e */
    public u d(HttpDataSource.c cVar) {
        u uVar = new u(this.f27400b, this.f27402d, this.f27403e, this.f27404f, cVar);
        p0 p0Var = this.f27401c;
        if (p0Var != null) {
            uVar.e(p0Var);
        }
        return uVar;
    }

    public v(@Nullable String str) {
        this(str, null);
    }

    public v(@Nullable String str, @Nullable p0 p0Var) {
        this(str, p0Var, 8000, 8000, false);
    }

    public v(@Nullable String str, int i4, int i10, boolean z9) {
        this(str, null, i4, i10, z9);
    }

    public v(@Nullable String str, @Nullable p0 p0Var, int i4, int i10, boolean z9) {
        this.f27400b = str;
        this.f27401c = p0Var;
        this.f27402d = i4;
        this.f27403e = i10;
        this.f27404f = z9;
    }
}
