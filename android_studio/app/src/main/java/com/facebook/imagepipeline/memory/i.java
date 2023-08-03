package com.facebook.imagepipeline.memory;

import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedList;

/* compiled from: BucketMap.java */
@Nullsafe(Nullsafe.Mode.STRICT)
@v1.f0
/* loaded from: classes.dex */
public class i<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final SparseArray<b<T>> f12641a = new SparseArray<>();
    @r7.h
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    b<T> f12642b;
    @r7.h
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    b<T> f12643c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BucketMap.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b<I> {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        b<I> f12644a;

        /* renamed from: b  reason: collision with root package name */
        int f12645b;

        /* renamed from: c  reason: collision with root package name */
        LinkedList<I> f12646c;
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        b<I> f12647d;

        public String toString() {
            return "LinkedEntry(key: " + this.f12645b + ")";
        }

        private b(@r7.h b<I> prev, int key, LinkedList<I> value, @r7.h b<I> next) {
            this.f12644a = prev;
            this.f12645b = key;
            this.f12646c = value;
            this.f12647d = next;
        }
    }

    private void b(b<T> bucket) {
        if (bucket == null || !bucket.f12646c.isEmpty()) {
            return;
        }
        d(bucket);
        this.f12641a.remove(bucket.f12645b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(b<T> bucket) {
        if (this.f12642b == bucket) {
            return;
        }
        d(bucket);
        b bVar = (b<T>) this.f12642b;
        if (bVar == null) {
            this.f12642b = bucket;
            this.f12643c = bucket;
            return;
        }
        bucket.f12647d = bVar;
        bVar.f12644a = bucket;
        this.f12642b = bucket;
    }

    private synchronized void d(b<T> bucket) {
        b bVar = (b<T>) bucket.f12644a;
        b bVar2 = (b<T>) bucket.f12647d;
        if (bVar != null) {
            bVar.f12647d = bVar2;
        }
        if (bVar2 != null) {
            bVar2.f12644a = bVar;
        }
        bucket.f12644a = null;
        bucket.f12647d = null;
        if (bucket == this.f12642b) {
            this.f12642b = bVar2;
        }
        if (bucket == this.f12643c) {
            this.f12643c = bVar;
        }
    }

    @r7.h
    public synchronized T a(int key) {
        b<T> bVar = this.f12641a.get(key);
        if (bVar == null) {
            return null;
        }
        T pollFirst = bVar.f12646c.pollFirst();
        c(bVar);
        return pollFirst;
    }

    public synchronized void e(int key, T value) {
        b<T> bVar = this.f12641a.get(key);
        if (bVar == null) {
            bVar = new b<>(null, key, new LinkedList(), null);
            this.f12641a.put(key, bVar);
        }
        bVar.f12646c.addLast(value);
        c(bVar);
    }

    @r7.h
    public synchronized T f() {
        b<T> bVar = this.f12643c;
        if (bVar == null) {
            return null;
        }
        T pollLast = bVar.f12646c.pollLast();
        b(bVar);
        return pollLast;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public synchronized int g() {
        int i4;
        i4 = 0;
        for (b bVar = this.f12642b; bVar != null; bVar = bVar.f12647d) {
            LinkedList<I> linkedList = bVar.f12646c;
            if (linkedList != 0) {
                i4 += linkedList.size();
            }
        }
        return i4;
    }
}
