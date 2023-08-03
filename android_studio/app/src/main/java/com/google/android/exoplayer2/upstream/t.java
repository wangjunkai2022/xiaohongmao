package com.google.android.exoplayer2.upstream;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.m;
import com.google.android.exoplayer2.upstream.u;

/* compiled from: DefaultDataSourceFactory.java */
/* loaded from: classes2.dex */
public final class t implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f27369a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final p0 f27370b;

    /* renamed from: c  reason: collision with root package name */
    private final m.a f27371c;

    public t(Context context) {
        this(context, (String) null, (p0) null);
    }

    @Override // com.google.android.exoplayer2.upstream.m.a
    /* renamed from: d */
    public s a() {
        s sVar = new s(this.f27369a, this.f27371c.a());
        p0 p0Var = this.f27370b;
        if (p0Var != null) {
            sVar.e(p0Var);
        }
        return sVar;
    }

    public t(Context context, @Nullable String str) {
        this(context, str, (p0) null);
    }

    public t(Context context, @Nullable String str, @Nullable p0 p0Var) {
        this(context, p0Var, new u.b().k(str));
    }

    public t(Context context, m.a aVar) {
        this(context, (p0) null, aVar);
    }

    public t(Context context, @Nullable p0 p0Var, m.a aVar) {
        this.f27369a = context.getApplicationContext();
        this.f27370b = p0Var;
        this.f27371c = aVar;
    }
}
