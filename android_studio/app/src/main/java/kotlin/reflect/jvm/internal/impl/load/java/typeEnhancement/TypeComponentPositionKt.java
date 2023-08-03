package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: TypeComponentPosition.kt */
/* loaded from: classes4.dex */
public final class TypeComponentPositionKt {
    public static final boolean shouldEnhance(@g TypeComponentPosition typeComponentPosition) {
        Intrinsics.checkNotNullParameter(typeComponentPosition, "<this>");
        return typeComponentPosition != TypeComponentPosition.INFLEXIBLE;
    }
}
