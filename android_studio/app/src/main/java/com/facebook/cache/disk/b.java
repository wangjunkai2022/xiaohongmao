package com.facebook.cache.disk;

import com.facebook.cache.disk.d;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultEntryEvictionComparatorSupplier.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements h {

    /* compiled from: DefaultEntryEvictionComparatorSupplier.java */
    /* loaded from: classes.dex */
    class a implements g {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d.c e12, d.c e22) {
            long b10 = e12.b();
            long b11 = e22.b();
            if (b10 < b11) {
                return -1;
            }
            return b11 == b10 ? 0 : 1;
        }
    }

    @Override // com.facebook.cache.disk.h
    public g get() {
        return new a();
    }
}
