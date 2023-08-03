package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class b extends zzx {

    /* renamed from: c  reason: collision with root package name */
    private final transient zzw f30336c;

    /* renamed from: d  reason: collision with root package name */
    private final transient Object[] f30337d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f30338e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(zzw zzwVar, Object[] objArr, int i4, int i10) {
        this.f30336c = zzwVar;
        this.f30337d = objArr;
        this.f30338e = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final int a(Object[] objArr, int i4) {
        return zzf().a(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@r7.a Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f30336c.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzx
    final zzu e() {
        return new hb(this);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzx, com.google.android.gms.internal.mlkit_language_id_common.zzq, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzf().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f30338e;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzx, com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final g zzd() {
        return zzf().listIterator(0);
    }
}
