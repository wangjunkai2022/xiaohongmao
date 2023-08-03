package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: LruCache.java */
/* loaded from: classes.dex */
public class j<T, Y> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<T, a<Y>> f9715a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b  reason: collision with root package name */
    private final long f9716b;

    /* renamed from: c  reason: collision with root package name */
    private long f9717c;

    /* renamed from: d  reason: collision with root package name */
    private long f9718d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LruCache.java */
    /* loaded from: classes.dex */
    public static final class a<Y> {

        /* renamed from: a  reason: collision with root package name */
        final Y f9719a;

        /* renamed from: b  reason: collision with root package name */
        final int f9720b;

        a(Y y9, int i4) {
            this.f9719a = y9;
            this.f9720b = i4;
        }
    }

    public j(long j4) {
        this.f9716b = j4;
        this.f9717c = j4;
    }

    private void h() {
        o(this.f9717c);
    }

    public void b() {
        o(0L);
    }

    public synchronized void c(float f10) {
        if (f10 >= 0.0f) {
            this.f9717c = Math.round(((float) this.f9716b) * f10);
            h();
        } else {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
    }

    public synchronized boolean g(@NonNull T t9) {
        return this.f9715a.containsKey(t9);
    }

    public synchronized long getCurrentSize() {
        return this.f9718d;
    }

    public synchronized long getMaxSize() {
        return this.f9717c;
    }

    @Nullable
    public synchronized Y i(@NonNull T t9) {
        a<Y> aVar;
        aVar = this.f9715a.get(t9);
        return aVar != null ? aVar.f9719a : null;
    }

    protected synchronized int j() {
        return this.f9715a.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int k(@Nullable Y y9) {
        return 1;
    }

    protected void l(@NonNull T t9, @Nullable Y y9) {
    }

    @Nullable
    public synchronized Y m(@NonNull T t9, @Nullable Y y9) {
        int k10 = k(y9);
        long j4 = k10;
        if (j4 >= this.f9717c) {
            l(t9, y9);
            return null;
        }
        if (y9 != null) {
            this.f9718d += j4;
        }
        a<Y> put = this.f9715a.put(t9, y9 == null ? null : new a<>(y9, k10));
        if (put != null) {
            this.f9718d -= put.f9720b;
            if (!put.f9719a.equals(y9)) {
                l(t9, put.f9719a);
            }
        }
        h();
        return put != null ? put.f9719a : null;
    }

    @Nullable
    public synchronized Y n(@NonNull T t9) {
        a<Y> remove = this.f9715a.remove(t9);
        if (remove == null) {
            return null;
        }
        this.f9718d -= remove.f9720b;
        return remove.f9719a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void o(long j4) {
        while (this.f9718d > j4) {
            Iterator<Map.Entry<T, a<Y>>> it = this.f9715a.entrySet().iterator();
            Map.Entry<T, a<Y>> next = it.next();
            a<Y> value = next.getValue();
            this.f9718d -= value.f9720b;
            T key = next.getKey();
            it.remove();
            l(key, value.f9719a);
        }
    }
}
