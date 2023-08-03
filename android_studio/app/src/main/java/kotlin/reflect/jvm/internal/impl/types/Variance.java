package kotlin.reflect.jvm.internal.impl.types;

import m8.g;

/* compiled from: Variance.kt */
/* loaded from: classes4.dex */
public enum Variance {
    INVARIANT("", true, true, 0),
    IN_VARIANCE("in", true, false, -1),
    OUT_VARIANCE("out", false, true, 1);
    
    private final boolean allowsInPosition;
    private final boolean allowsOutPosition;
    @g
    private final String label;
    private final int superpositionFactor;

    Variance(String str, boolean z9, boolean z10, int i4) {
        this.label = str;
        this.allowsInPosition = z9;
        this.allowsOutPosition = z10;
        this.superpositionFactor = i4;
    }

    public final boolean getAllowsOutPosition() {
        return this.allowsOutPosition;
    }

    @g
    public final String getLabel() {
        return this.label;
    }

    @Override // java.lang.Enum
    @g
    public String toString() {
        return this.label;
    }
}
