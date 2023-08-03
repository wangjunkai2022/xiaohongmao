package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: KotlinTypeFactory.kt */
/* loaded from: classes4.dex */
final class NullableSimpleType extends DelegatingSimpleTypeImpl {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NullableSimpleType(@g SimpleType delegate) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    @g
    public NullableSimpleType replaceDelegate(@g SimpleType delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return new NullableSimpleType(delegate);
    }
}
