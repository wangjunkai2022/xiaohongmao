package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ElasticTabIndicatorInterpolator extends TabIndicatorInterpolator {
    private static float accInterp(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (float) (1.0d - Math.cos((f10 * 3.141592653589793d) / 2.0d));
    }

    private static float decInterp(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (float) Math.sin((f10 * 3.141592653589793d) / 2.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.tabs.TabIndicatorInterpolator
    public void setIndicatorBoundsForOffset(TabLayout tabLayout, View view, View view2, float f10, @NonNull Drawable drawable) {
        float decInterp;
        float accInterp;
        RectF calculateIndicatorWidthForTab = TabIndicatorInterpolator.calculateIndicatorWidthForTab(tabLayout, view);
        RectF calculateIndicatorWidthForTab2 = TabIndicatorInterpolator.calculateIndicatorWidthForTab(tabLayout, view2);
        if (calculateIndicatorWidthForTab.left < calculateIndicatorWidthForTab2.left) {
            decInterp = accInterp(f10);
            accInterp = decInterp(f10);
        } else {
            decInterp = decInterp(f10);
            accInterp = accInterp(f10);
        }
        drawable.setBounds(AnimationUtils.lerp((int) calculateIndicatorWidthForTab.left, (int) calculateIndicatorWidthForTab2.left, decInterp), drawable.getBounds().top, AnimationUtils.lerp((int) calculateIndicatorWidthForTab.right, (int) calculateIndicatorWidthForTab2.right, accInterp), drawable.getBounds().bottom);
    }
}
