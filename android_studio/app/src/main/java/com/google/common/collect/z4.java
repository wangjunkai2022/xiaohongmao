package com.google.common.collect;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.d5;
import com.google.errorprone.annotations.Immutable;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SparseImmutableTable.java */
@Immutable(containerOf = {"R", "C", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@h3.b
/* loaded from: classes2.dex */
public final class z4<R, C, V> extends i4<R, C, V> {

    /* renamed from: g  reason: collision with root package name */
    static final ImmutableTable<Object, Object, Object> f34004g = new z4(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableMap<R, ImmutableMap<C, V>> f34005c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableMap<C, ImmutableMap<R, V>> f34006d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f34007e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f34008f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public z4(ImmutableList<d5.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap Q = f3.Q(immutableSet);
        LinkedHashMap c02 = f3.c0();
        k5<R> it = immutableSet.iterator();
        while (it.hasNext()) {
            c02.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap c03 = f3.c0();
        k5<C> it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            c03.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i4 = 0; i4 < immutableList.size(); i4++) {
            d5.a<R, C, V> aVar = immutableList.get(i4);
            R a10 = aVar.a();
            C b10 = aVar.b();
            V value = aVar.getValue();
            iArr[i4] = ((Integer) Q.get(a10)).intValue();
            Map map = (Map) c02.get(a10);
            iArr2[i4] = map.size();
            n(a10, b10, map.put(b10, value), value);
            ((Map) c03.get(b10)).put(a10, value);
        }
        this.f34007e = iArr;
        this.f34008f = iArr2;
        ImmutableMap.b bVar = new ImmutableMap.b(c02.size());
        for (Map.Entry entry : c02.entrySet()) {
            bVar.d(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.f34005c = bVar.a();
        ImmutableMap.b bVar2 = new ImmutableMap.b(c03.size());
        for (Map.Entry entry2 : c03.entrySet()) {
            bVar2.d(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.f34006d = bVar2.a();
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b k() {
        ImmutableMap Q = f3.Q(columnKeySet());
        int[] iArr = new int[cellSet().size()];
        k5<d5.a<R, C, V>> it = cellSet().iterator();
        int i4 = 0;
        while (it.hasNext()) {
            iArr[i4] = ((Integer) Q.get(it.next().b())).intValue();
            i4++;
        }
        return ImmutableTable.b.a(this, this.f34007e, iArr);
    }

    @Override // com.google.common.collect.i4
    d5.a<R, C, V> s(int i4) {
        Map.Entry<R, ImmutableMap<C, V>> entry = this.f34005c.entrySet().asList().get(this.f34007e[i4]);
        Map.Entry<C, V> entry2 = entry.getValue().entrySet().asList().get(this.f34008f[i4]);
        return ImmutableTable.h(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.d5
    public int size() {
        return this.f34007e.length;
    }

    @Override // com.google.common.collect.i4
    V t(int i4) {
        int i10 = this.f34007e[i4];
        return this.f34005c.values().asList().get(i10).values().asList().get(this.f34008f[i4]);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.f34006d);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.d5
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.f34005c);
    }
}
