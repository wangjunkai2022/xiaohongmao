package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Iterator;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class c extends zzx {

    /* renamed from: c  reason: collision with root package name */
    private final transient zzw f30359c;

    /* renamed from: d  reason: collision with root package name */
    private final transient zzu f30360d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(zzw zzwVar, zzu zzuVar) {
        this.f30359c = zzwVar;
        this.f30360d = zzuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final int a(Object[] objArr, int i4) {
        return this.f30360d.a(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@r7.a Object obj) {
        return this.f30359c.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzx, com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f30360d.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f30359c.size();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzx, com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final g zzd() {
        return this.f30360d.listIterator(0);
    }
}
