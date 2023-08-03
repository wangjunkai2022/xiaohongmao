package com.facebook.fresco.animation.drawable;

import com.facebook.fresco.animation.drawable.a;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: AnimatedDrawable2DebugDrawListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements a.b {

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f11737e = b.class;

    /* renamed from: a  reason: collision with root package name */
    private int f11738a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f11739b;

    /* renamed from: c  reason: collision with root package name */
    private int f11740c;

    /* renamed from: d  reason: collision with root package name */
    private int f11741d;

    @Override // com.facebook.fresco.animation.drawable.a.b
    public void a(a animatedDrawable, com.facebook.fresco.animation.frame.b frameScheduler, int frameNumberToDraw, boolean frameDrawn, boolean isAnimationRunning, long animationStartTimeMs, long animationTimeMs, long lastFrameAnimationTimeMs, long actualRenderTimeStartMs, long actualRenderTimeEndMs, long startRenderTimeForNextFrameMs, long scheduledRenderTimeForNextFrameMs) {
        if (animatedDrawable.c() == null) {
            return;
        }
        int a10 = animatedDrawable.c().a();
        long j4 = animationTimeMs - lastFrameAnimationTimeMs;
        this.f11741d++;
        int i4 = this.f11738a;
        int i10 = (i4 + 1) % a10;
        if (i10 != frameNumberToDraw) {
            if (i4 == frameNumberToDraw) {
                this.f11740c++;
            } else {
                int i11 = (frameNumberToDraw - i10) % a10;
                if (i11 < 0) {
                    i11 += a10;
                }
                this.f11739b += i11;
            }
        }
        this.f11738a = frameNumberToDraw;
        p0.a.g(f11737e, "draw: frame: %2d, drawn: %b, delay: %3d ms, rendering: %3d ms, prev: %3d ms ago, duplicates: %3d, skipped: %3d, draw calls: %4d, anim time: %6d ms, next start: %6d ms, next scheduled: %6d ms", Integer.valueOf(frameNumberToDraw), Boolean.valueOf(frameDrawn), Long.valueOf((animationTimeMs % frameScheduler.e()) - frameScheduler.a(frameNumberToDraw)), Long.valueOf(actualRenderTimeEndMs - actualRenderTimeStartMs), Long.valueOf(j4), Integer.valueOf(this.f11740c), Integer.valueOf(this.f11739b), Integer.valueOf(this.f11741d), Long.valueOf(animationTimeMs), Long.valueOf(startRenderTimeForNextFrameMs), Long.valueOf(scheduledRenderTimeForNextFrameMs));
    }
}
