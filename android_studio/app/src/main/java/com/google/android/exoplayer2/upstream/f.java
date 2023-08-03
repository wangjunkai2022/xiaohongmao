package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: BaseDataSource.java */
/* loaded from: classes2.dex */
public abstract class f implements m {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f27231b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<p0> f27232c = new ArrayList<>(1);

    /* renamed from: d  reason: collision with root package name */
    private int f27233d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private o f27234e;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(boolean z9) {
        this.f27231b = z9;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public /* synthetic */ Map b() {
        return l.a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public final void e(p0 p0Var) {
        com.google.android.exoplayer2.util.a.g(p0Var);
        if (this.f27232c.contains(p0Var)) {
            return;
        }
        this.f27232c.add(p0Var);
        this.f27233d++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t(int i4) {
        o oVar = (o) z0.k(this.f27234e);
        for (int i10 = 0; i10 < this.f27233d; i10++) {
            this.f27232c.get(i10).f(this, oVar, this.f27231b, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u() {
        o oVar = (o) z0.k(this.f27234e);
        for (int i4 = 0; i4 < this.f27233d; i4++) {
            this.f27232c.get(i4).b(this, oVar, this.f27231b);
        }
        this.f27234e = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void v(o oVar) {
        for (int i4 = 0; i4 < this.f27233d; i4++) {
            this.f27232c.get(i4).i(this, oVar, this.f27231b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void w(o oVar) {
        this.f27234e = oVar;
        for (int i4 = 0; i4 < this.f27233d; i4++) {
            this.f27232c.get(i4).h(this, oVar, this.f27231b);
        }
    }
}
