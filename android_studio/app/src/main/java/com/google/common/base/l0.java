package com.google.common.base;

/* compiled from: Ticker.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static final l0 f32276a = new a();

    /* compiled from: Ticker.java */
    /* loaded from: classes2.dex */
    static class a extends l0 {
        a() {
        }

        @Override // com.google.common.base.l0
        public long a() {
            return z.k();
        }
    }

    public static l0 b() {
        return f32276a;
    }

    public abstract long a();
}
