package com.google.android.gms.internal.mlkit_common;

import java.util.AbstractMap;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class q extends zzan {

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r f29914c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(r rVar) {
        this.f29914c = rVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i4) {
        int i10;
        Object[] objArr;
        Object[] objArr2;
        i10 = this.f29914c.f29941e;
        d.a(i4, i10, "index");
        r rVar = this.f29914c;
        int i11 = i4 + i4;
        objArr = rVar.f29940d;
        Object obj = objArr[i11];
        obj.getClass();
        objArr2 = rVar.f29940d;
        Object obj2 = objArr2[i11 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i4;
        i4 = this.f29914c.f29941e;
        return i4;
    }
}
