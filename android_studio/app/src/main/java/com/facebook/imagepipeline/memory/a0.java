package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: NoOpPoolStatsTracker.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a0 implements g0 {
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private static a0 f12555h;

    private a0() {
    }

    public static synchronized a0 h() {
        a0 a0Var;
        synchronized (a0.class) {
            if (f12555h == null) {
                f12555h = new a0();
            }
            a0Var = f12555h;
        }
        return a0Var;
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void a() {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void b(int sizeInBytes) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void c(int sizeInBytes) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void d(int size) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void e(int bucketedSize) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void f(BasePool basePool) {
    }

    @Override // com.facebook.imagepipeline.memory.g0
    public void g() {
    }
}
