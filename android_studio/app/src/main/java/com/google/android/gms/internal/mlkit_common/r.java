package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class r extends zzaq {

    /* renamed from: c  reason: collision with root package name */
    private final transient zzap f29939c;

    /* renamed from: d  reason: collision with root package name */
    private final transient Object[] f29940d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f29941e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(zzap zzapVar, Object[] objArr, int i4, int i10) {
        this.f29939c = zzapVar;
        this.f29940d = objArr;
        this.f29941e = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final int a(Object[] objArr, int i4) {
        return zzf().a(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@r7.a Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f29939c.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaq
    final zzan e() {
        return new q(this);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaq, com.google.android.gms.internal.mlkit_common.zzaj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f29941e;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaq, com.google.android.gms.internal.mlkit_common.zzaj
    public final w zzd() {
        return zzf().listIterator(0);
    }
}
