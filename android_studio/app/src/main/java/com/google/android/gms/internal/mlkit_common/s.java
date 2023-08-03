package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class s extends zzaq {

    /* renamed from: c  reason: collision with root package name */
    private final transient zzap f29973c;

    /* renamed from: d  reason: collision with root package name */
    private final transient zzan f29974d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(zzap zzapVar, zzan zzanVar) {
        this.f29973c = zzapVar;
        this.f29974d = zzanVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final int a(Object[] objArr, int i4) {
        return this.f29974d.a(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@r7.a Object obj) {
        return this.f29973c.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaq, com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f29974d.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f29973c.size();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaq, com.google.android.gms.internal.mlkit_common.zzaj
    public final w zzd() {
        return this.f29974d.listIterator(0);
    }
}
