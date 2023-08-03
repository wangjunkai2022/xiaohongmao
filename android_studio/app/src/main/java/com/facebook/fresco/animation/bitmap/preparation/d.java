package com.facebook.fresco.animation.bitmap.preparation;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: FixedNumberBitmapFramePreparationStrategy.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d implements a {

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f11704b = d.class;

    /* renamed from: c  reason: collision with root package name */
    private static final int f11705c = 3;

    /* renamed from: a  reason: collision with root package name */
    private final int f11706a;

    public d() {
        this(3);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.a
    public void a(b bitmapFramePreparer, b1.b bitmapFrameCache, com.facebook.fresco.animation.backend.a animationBackend, int lastDrawnFrameNumber) {
        for (int i4 = 1; i4 <= this.f11706a; i4++) {
            int a10 = (lastDrawnFrameNumber + i4) % animationBackend.a();
            if (p0.a.R(2)) {
                p0.a.W(f11704b, "Preparing frame %d, last drawn: %d", Integer.valueOf(a10), Integer.valueOf(lastDrawnFrameNumber));
            }
            if (!bitmapFramePreparer.a(bitmapFrameCache, animationBackend, a10)) {
                return;
            }
        }
    }

    public d(int framesToPrepare) {
        this.f11706a = framesToPrepare;
    }
}
