package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapCounterConfig.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final int f12563b = 384;

    /* renamed from: a  reason: collision with root package name */
    private int f12564a;

    /* compiled from: BitmapCounterConfig.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f12565a;

        public c a() {
            return new c(this);
        }

        public int b() {
            return this.f12565a;
        }

        public b c(int maxBitmapCount) {
            this.f12565a = maxBitmapCount;
            return this;
        }

        private b() {
            this.f12565a = c.f12563b;
        }
    }

    public c(b builder) {
        this.f12564a = f12563b;
        this.f12564a = builder.b();
    }

    public static b b() {
        return new b();
    }

    public int a() {
        return this.f12564a;
    }

    public void c(int maxBitmapCount) {
        this.f12564a = maxBitmapCount;
    }
}
