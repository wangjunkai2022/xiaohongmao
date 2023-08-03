package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedList;
import java.util.Queue;

/* compiled from: Bucket.java */
@s7.c
@VisibleForTesting
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
class h<V> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f12629f = "BUCKET";

    /* renamed from: a  reason: collision with root package name */
    public final int f12630a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12631b;

    /* renamed from: c  reason: collision with root package name */
    final Queue f12632c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f12633d;

    /* renamed from: e  reason: collision with root package name */
    private int f12634e;

    public h(int itemSize, int maxLength, int inUseLength, boolean fixBucketsReinitialization) {
        com.facebook.common.internal.j.o(itemSize > 0);
        com.facebook.common.internal.j.o(maxLength >= 0);
        com.facebook.common.internal.j.o(inUseLength >= 0);
        this.f12630a = itemSize;
        this.f12631b = maxLength;
        this.f12632c = new LinkedList();
        this.f12634e = inUseLength;
        this.f12633d = fixBucketsReinitialization;
    }

    void a(V value) {
        this.f12632c.add(value);
    }

    public void b() {
        com.facebook.common.internal.j.o(this.f12634e > 0);
        this.f12634e--;
    }

    @r7.h
    @Deprecated
    public V c() {
        V h4 = h();
        if (h4 != null) {
            this.f12634e++;
        }
        return h4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f12632c.size();
    }

    public int e() {
        return this.f12634e;
    }

    public void f() {
        this.f12634e++;
    }

    public boolean g() {
        return this.f12634e + d() > this.f12631b;
    }

    @r7.h
    public V h() {
        return (V) this.f12632c.poll();
    }

    public void i(V value) {
        com.facebook.common.internal.j.i(value);
        if (this.f12633d) {
            com.facebook.common.internal.j.o(this.f12634e > 0);
            this.f12634e--;
            a(value);
            return;
        }
        int i4 = this.f12634e;
        if (i4 > 0) {
            this.f12634e = i4 - 1;
            a(value);
            return;
        }
        p0.a.w(f12629f, "Tried to release value %s from an empty bucket!", value);
    }
}
