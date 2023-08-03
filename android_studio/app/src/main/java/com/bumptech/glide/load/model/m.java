package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;

/* compiled from: ModelCache.java */
/* loaded from: classes.dex */
public class m<A, B> {

    /* renamed from: b  reason: collision with root package name */
    private static final int f9070b = 250;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.util.j<b<A>, B> f9071a;

    /* compiled from: ModelCache.java */
    /* loaded from: classes.dex */
    class a extends com.bumptech.glide.util.j<b<A>, B> {
        a(long j4) {
            super(j4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.util.j
        /* renamed from: p */
        public void l(@NonNull b<A> bVar, @Nullable B b10) {
            bVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ModelCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b<A> {

        /* renamed from: d  reason: collision with root package name */
        private static final Queue<b<?>> f9073d = com.bumptech.glide.util.o.f(0);

        /* renamed from: a  reason: collision with root package name */
        private int f9074a;

        /* renamed from: b  reason: collision with root package name */
        private int f9075b;

        /* renamed from: c  reason: collision with root package name */
        private A f9076c;

        private b() {
        }

        static <A> b<A> a(A a10, int i4, int i10) {
            b<A> bVar;
            Queue<b<?>> queue = f9073d;
            synchronized (queue) {
                bVar = (b<A>) queue.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a10, i4, i10);
            return bVar;
        }

        private void b(A a10, int i4, int i10) {
            this.f9076c = a10;
            this.f9075b = i4;
            this.f9074a = i10;
        }

        public void c() {
            Queue<b<?>> queue = f9073d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f9075b == bVar.f9075b && this.f9074a == bVar.f9074a && this.f9076c.equals(bVar.f9076c);
            }
            return false;
        }

        public int hashCode() {
            return (((this.f9074a * 31) + this.f9075b) * 31) + this.f9076c.hashCode();
        }
    }

    public m() {
        this(250L);
    }

    public void a() {
        this.f9071a.b();
    }

    @Nullable
    public B b(A a10, int i4, int i10) {
        b<A> a11 = b.a(a10, i4, i10);
        B i11 = this.f9071a.i(a11);
        a11.c();
        return i11;
    }

    public void c(A a10, int i4, int i10, B b10) {
        this.f9071a.m(b.a(a10, i4, i10), b10);
    }

    public m(long j4) {
        this.f9071a = new a(j4);
    }
}
