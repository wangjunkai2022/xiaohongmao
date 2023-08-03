package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: IntersectionType.kt */
/* loaded from: classes4.dex */
/* synthetic */ class TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1 extends FunctionReference implements Function2<KotlinType, KotlinType, Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(Object obj) {
        super(2, obj);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @g
    public final String getName() {
        return "equalTypes";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(NewKotlinTypeCheckerImpl.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final String getSignature() {
        return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final Boolean invoke(@g KotlinType p02, @g KotlinType p12) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(p12, "p1");
        return Boolean.valueOf(((NewKotlinTypeCheckerImpl) this.receiver).equalTypes(p02, p12));
    }
}
