package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: CapturedTypeApproximation.kt */
/* loaded from: classes4.dex */
public final class ApproximationBounds<T> {
    private final T lower;
    private final T upper;

    public ApproximationBounds(T t9, T t10) {
        this.lower = t9;
        this.upper = t10;
    }

    public final T component1() {
        return this.lower;
    }

    public final T component2() {
        return this.upper;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ApproximationBounds) {
            ApproximationBounds approximationBounds = (ApproximationBounds) obj;
            return Intrinsics.areEqual(this.lower, approximationBounds.lower) && Intrinsics.areEqual(this.upper, approximationBounds.upper);
        }
        return false;
    }

    public final T getLower() {
        return this.lower;
    }

    public final T getUpper() {
        return this.upper;
    }

    public int hashCode() {
        T t9 = this.lower;
        int hashCode = (t9 == null ? 0 : t9.hashCode()) * 31;
        T t10 = this.upper;
        return hashCode + (t10 != null ? t10.hashCode() : 0);
    }

    @g
    public String toString() {
        return "ApproximationBounds(lower=" + this.lower + ", upper=" + this.upper + ')';
    }
}
