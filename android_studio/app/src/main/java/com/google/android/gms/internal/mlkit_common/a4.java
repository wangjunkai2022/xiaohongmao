package com.google.android.gms.internal.mlkit_common;

import java.util.Objects;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class a4 {

    /* renamed from: a  reason: collision with root package name */
    private final k f29425a = zzan.zzg();

    /* renamed from: b  reason: collision with root package name */
    private Boolean f29426b;

    private a4() {
    }

    public final a4 a() {
        d.d(this.f29426b == null, "A SourcePolicy can only set internal() or external() once.");
        this.f29426b = Boolean.FALSE;
        return this;
    }

    public final a4 b() {
        d.d(this.f29426b == null, "A SourcePolicy can only set internal() or external() once.");
        this.f29426b = Boolean.TRUE;
        return this;
    }

    public final c6 c() {
        Objects.requireNonNull(this.f29426b, "Must call internal() or external() when building a SourcePolicy.");
        return new c6(this.f29426b.booleanValue(), false, this.f29425a.d(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ a4(z2 z2Var) {
    }
}
