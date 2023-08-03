package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.disk.d;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ScoreBasedEvictionComparatorSupplier.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private final float f10935a;

    /* renamed from: b  reason: collision with root package name */
    private final float f10936b;

    /* compiled from: ScoreBasedEvictionComparatorSupplier.java */
    /* loaded from: classes.dex */
    class a implements g {

        /* renamed from: a  reason: collision with root package name */
        long f10937a = System.currentTimeMillis();

        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d.c lhs, d.c rhs) {
            float a10 = j.this.a(lhs, this.f10937a);
            float a11 = j.this.a(rhs, this.f10937a);
            if (a10 < a11) {
                return 1;
            }
            return a11 == a10 ? 0 : -1;
        }
    }

    public j(float ageWeight, float sizeWeight) {
        this.f10935a = ageWeight;
        this.f10936b = sizeWeight;
    }

    @VisibleForTesting
    float a(d.c entry, long now) {
        return (this.f10935a * ((float) (now - entry.b()))) + (this.f10936b * ((float) entry.getSize()));
    }

    @Override // com.facebook.cache.disk.h
    public g get() {
        return new a();
    }
}
