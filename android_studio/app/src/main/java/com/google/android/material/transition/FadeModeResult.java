package com.google.android.material.transition;

/* loaded from: classes2.dex */
class FadeModeResult {
    final int endAlpha;
    final boolean endOnTop;
    final int startAlpha;

    private FadeModeResult(int i4, int i10, boolean z9) {
        this.startAlpha = i4;
        this.endAlpha = i10;
        this.endOnTop = z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult endOnTop(int i4, int i10) {
        return new FadeModeResult(i4, i10, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult startOnTop(int i4, int i10) {
        return new FadeModeResult(i4, i10, false);
    }
}
