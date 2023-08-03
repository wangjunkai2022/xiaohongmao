package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class q implements m3.b {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.firebase.encoders.d f30805d = p.f30783a;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f30806e = 0;

    /* renamed from: a  reason: collision with root package name */
    private final Map f30807a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map f30808b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.encoders.d f30809c = f30805d;

    @Override // m3.b
    @NonNull
    public final /* bridge */ /* synthetic */ m3.b a(@NonNull Class cls, @NonNull com.google.firebase.encoders.f fVar) {
        this.f30808b.put(cls, fVar);
        this.f30807a.remove(cls);
        return this;
    }

    @Override // m3.b
    @NonNull
    public final /* bridge */ /* synthetic */ m3.b b(@NonNull Class cls, @NonNull com.google.firebase.encoders.d dVar) {
        this.f30807a.put(cls, dVar);
        this.f30808b.remove(cls);
        return this;
    }

    public final r c() {
        return new r(new HashMap(this.f30807a), new HashMap(this.f30808b), this.f30809c);
    }
}
