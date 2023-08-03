package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes2.dex */
class FadeModeEvaluators {
    private static final FadeModeEvaluator IN = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            return FadeModeResult.endOnTop(255, TransitionUtils.lerp(0, 255, f11, f12, f10));
        }
    };
    private static final FadeModeEvaluator OUT = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f11, f12, f10), 255);
        }
    };
    private static final FadeModeEvaluator CROSS = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f11, f12, f10), TransitionUtils.lerp(0, 255, f11, f12, f10));
        }
    };
    private static final FadeModeEvaluator THROUGH = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public FadeModeResult evaluate(float f10, float f11, float f12, float f13) {
            float f14 = ((f12 - f11) * f13) + f11;
            return FadeModeResult.startOnTop(TransitionUtils.lerp(255, 0, f11, f14, f10), TransitionUtils.lerp(0, 255, f14, f12, f10));
        }
    };

    private FadeModeEvaluators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeEvaluator get(int i4, boolean z9) {
        if (i4 == 0) {
            return z9 ? IN : OUT;
        } else if (i4 == 1) {
            return z9 ? OUT : IN;
        } else if (i4 != 2) {
            if (i4 == 3) {
                return THROUGH;
            }
            throw new IllegalArgumentException("Invalid fade mode: " + i4);
        } else {
            return CROSS;
        }
    }
}
