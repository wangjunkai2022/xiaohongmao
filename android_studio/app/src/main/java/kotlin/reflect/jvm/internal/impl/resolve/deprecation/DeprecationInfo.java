package kotlin.reflect.jvm.internal.impl.resolve.deprecation;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DeprecationInfo.kt */
/* loaded from: classes4.dex */
public abstract class DeprecationInfo implements Comparable<DeprecationInfo> {
    @g
    public abstract DeprecationLevelValue getDeprecationLevel();

    public abstract boolean getPropagatesToOverrides();

    @Override // java.lang.Comparable
    public int compareTo(@g DeprecationInfo other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int compareTo = getDeprecationLevel().compareTo(other.getDeprecationLevel());
        if (compareTo == 0 && !getPropagatesToOverrides() && other.getPropagatesToOverrides()) {
            return 1;
        }
        return compareTo;
    }
}
