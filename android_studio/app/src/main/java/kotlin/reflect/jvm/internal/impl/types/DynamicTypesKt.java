package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: dynamicTypes.kt */
/* loaded from: classes4.dex */
public final class DynamicTypesKt {
    public static final boolean isDynamic(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof DynamicType;
    }
}
