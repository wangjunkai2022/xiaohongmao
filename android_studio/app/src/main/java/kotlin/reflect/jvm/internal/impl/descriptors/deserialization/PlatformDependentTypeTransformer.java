package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;

/* compiled from: PlatformDependentTypeTransformer.kt */
/* loaded from: classes4.dex */
public interface PlatformDependentTypeTransformer {

    /* compiled from: PlatformDependentTypeTransformer.kt */
    /* loaded from: classes4.dex */
    public static final class None implements PlatformDependentTypeTransformer {
        @g
        public static final None INSTANCE = new None();

        private None() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentTypeTransformer
        @g
        public SimpleType transformPlatformType(@g ClassId classId, @g SimpleType computedType) {
            Intrinsics.checkNotNullParameter(classId, "classId");
            Intrinsics.checkNotNullParameter(computedType, "computedType");
            return computedType;
        }
    }

    @g
    SimpleType transformPlatformType(@g ClassId classId, @g SimpleType simpleType);
}
