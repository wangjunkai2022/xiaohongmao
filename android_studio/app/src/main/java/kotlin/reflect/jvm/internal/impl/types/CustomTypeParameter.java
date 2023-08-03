package kotlin.reflect.jvm.internal.impl.types;

import m8.g;

/* compiled from: TypeCapabilities.kt */
/* loaded from: classes4.dex */
public interface CustomTypeParameter {
    boolean isTypeParameter();

    @g
    KotlinType substitutionResult(@g KotlinType kotlinType);
}
