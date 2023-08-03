package com.facebook.common.memory;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public enum MemoryTrimType {
    OnCloseToDalvikHeapLimit(0.5d),
    OnSystemMemoryCriticallyLowWhileAppInForeground(1.0d),
    OnSystemLowMemoryWhileAppInForeground(0.5d),
    OnSystemLowMemoryWhileAppInBackground(1.0d),
    OnAppBackgrounded(1.0d);
    

    /* renamed from: a  reason: collision with root package name */
    private double f10988a;

    MemoryTrimType(double suggestedTrimRatio) {
        this.f10988a = suggestedTrimRatio;
    }

    public double getSuggestedTrimRatio() {
        return this.f10988a;
    }
}
