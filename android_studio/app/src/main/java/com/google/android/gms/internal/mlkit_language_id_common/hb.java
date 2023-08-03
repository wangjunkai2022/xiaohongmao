package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.AbstractMap;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class hb extends zzu {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ b f30540c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hb(b bVar) {
        this.f30540c = bVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i4) {
        int i10;
        Object[] objArr;
        Object[] objArr2;
        i10 = this.f30540c.f30338e;
        g9.a(i4, i10, "index");
        b bVar = this.f30540c;
        int i11 = i4 + i4;
        objArr = bVar.f30337d;
        Object obj = objArr[i11];
        obj.getClass();
        objArr2 = bVar.f30337d;
        Object obj2 = objArr2[i11 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i4;
        i4 = this.f30540c.f30338e;
        return i4;
    }
}
