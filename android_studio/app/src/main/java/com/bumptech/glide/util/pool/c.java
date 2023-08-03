package com.bumptech.glide.util.pool;

import androidx.annotation.NonNull;

/* compiled from: StateVerifier.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f9744a = false;

    /* compiled from: StateVerifier.java */
    /* loaded from: classes.dex */
    private static class b extends c {

        /* renamed from: b  reason: collision with root package name */
        private volatile RuntimeException f9745b;

        b() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.c
        void b(boolean z9) {
            if (z9) {
                this.f9745b = new RuntimeException("Released");
            } else {
                this.f9745b = null;
            }
        }

        @Override // com.bumptech.glide.util.pool.c
        public void c() {
            if (this.f9745b != null) {
                throw new IllegalStateException("Already released", this.f9745b);
            }
        }
    }

    /* compiled from: StateVerifier.java */
    /* renamed from: com.bumptech.glide.util.pool.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0068c extends c {

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f9746b;

        C0068c() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.c
        public void b(boolean z9) {
            this.f9746b = z9;
        }

        @Override // com.bumptech.glide.util.pool.c
        public void c() {
            if (this.f9746b) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    @NonNull
    public static c a() {
        return new C0068c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(boolean z9);

    public abstract void c();

    private c() {
    }
}
