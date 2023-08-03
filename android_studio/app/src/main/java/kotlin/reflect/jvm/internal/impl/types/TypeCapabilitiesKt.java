package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: TypeCapabilities.kt */
/* loaded from: classes4.dex */
public final class TypeCapabilitiesKt {
    @h
    public static final CustomTypeParameter getCustomTypeParameter(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        CustomTypeParameter customTypeParameter = unwrap instanceof CustomTypeParameter ? (CustomTypeParameter) unwrap : null;
        if (customTypeParameter == null || !customTypeParameter.isTypeParameter()) {
            return null;
        }
        return customTypeParameter;
    }

    public static final boolean isCustomTypeParameter(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        CustomTypeParameter customTypeParameter = unwrap instanceof CustomTypeParameter ? (CustomTypeParameter) unwrap : null;
        if (customTypeParameter != null) {
            return customTypeParameter.isTypeParameter();
        }
        return false;
    }
}
