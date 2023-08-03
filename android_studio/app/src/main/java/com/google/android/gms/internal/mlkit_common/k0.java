package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class k0 implements m3.b {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.d f29756d = j0.f29728a;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f29757e = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Map f29758a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map f29759b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.encoders.d f29760c = f29756d;

    @Override // m3.b
    @NonNull
    public final /* bridge */ /* synthetic */ m3.b a(@NonNull Class cls, @NonNull com.google.firebase.encoders.f fVar) {
        this.f29759b.put(cls, fVar);
        this.f29758a.remove(cls);
        return this;
    }

    @Override // m3.b
    @NonNull
    public final /* bridge */ /* synthetic */ m3.b b(@NonNull Class cls, @NonNull com.google.firebase.encoders.d dVar) {
        this.f29758a.put(cls, dVar);
        this.f29759b.remove(cls);
        return this;
    }

    public final l0 c() {
        return new l0(new HashMap(this.f29758a), new HashMap(this.f29759b), this.f29760c);
    }
}
