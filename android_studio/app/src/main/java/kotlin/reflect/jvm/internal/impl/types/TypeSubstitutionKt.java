package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.FilteredAnnotations;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: TypeSubstitution.kt */
/* loaded from: classes4.dex */
public final class TypeSubstitutionKt {
    @g
    public static final SimpleType asSimpleType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        SimpleType simpleType = unwrap instanceof SimpleType ? (SimpleType) unwrap : null;
        if (simpleType != null) {
            return simpleType;
        }
        throw new IllegalStateException(("This is should be simple type: " + kotlinType).toString());
    }

    @JvmOverloads
    @g
    public static final KotlinType replace(@g KotlinType kotlinType, @g List<? extends TypeProjection> newArguments, @g Annotations newAnnotations) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(newArguments, "newArguments");
        Intrinsics.checkNotNullParameter(newAnnotations, "newAnnotations");
        return replace$default(kotlinType, newArguments, newAnnotations, null, 4, null);
    }

    @JvmOverloads
    @g
    public static final KotlinType replace(@g KotlinType kotlinType, @g List<? extends TypeProjection> newArguments, @g Annotations newAnnotations, @g List<? extends TypeProjection> newArgumentsForUpperBound) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(newArguments, "newArguments");
        Intrinsics.checkNotNullParameter(newAnnotations, "newAnnotations");
        Intrinsics.checkNotNullParameter(newArgumentsForUpperBound, "newArgumentsForUpperBound");
        if ((newArguments.isEmpty() || newArguments == kotlinType.getArguments()) && newAnnotations == kotlinType.getAnnotations()) {
            return kotlinType;
        }
        TypeAttributes attributes = kotlinType.getAttributes();
        if ((newAnnotations instanceof FilteredAnnotations) && newAnnotations.isEmpty()) {
            newAnnotations = Annotations.Companion.getEMPTY();
        }
        TypeAttributes replaceAnnotations = TypeAttributesKt.replaceAnnotations(attributes, newAnnotations);
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrap;
            return KotlinTypeFactory.flexibleType(replace(flexibleType.getLowerBound(), newArguments, replaceAnnotations), replace(flexibleType.getUpperBound(), newArgumentsForUpperBound, replaceAnnotations));
        } else if (unwrap instanceof SimpleType) {
            return replace((SimpleType) unwrap, newArguments, replaceAnnotations);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public static /* synthetic */ KotlinType replace$default(KotlinType kotlinType, List list, Annotations annotations, List list2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = kotlinType.getArguments();
        }
        if ((i4 & 2) != 0) {
            annotations = kotlinType.getAnnotations();
        }
        if ((i4 & 4) != 0) {
            list2 = list;
        }
        return replace(kotlinType, list, annotations, list2);
    }

    public static /* synthetic */ SimpleType replace$default(SimpleType simpleType, List list, TypeAttributes typeAttributes, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = simpleType.getArguments();
        }
        if ((i4 & 2) != 0) {
            typeAttributes = simpleType.getAttributes();
        }
        return replace(simpleType, list, typeAttributes);
    }

    @JvmOverloads
    @g
    public static final SimpleType replace(@g SimpleType simpleType, @g List<? extends TypeProjection> newArguments, @g TypeAttributes newAttributes) {
        Intrinsics.checkNotNullParameter(simpleType, "<this>");
        Intrinsics.checkNotNullParameter(newArguments, "newArguments");
        Intrinsics.checkNotNullParameter(newAttributes, "newAttributes");
        if (newArguments.isEmpty() && newAttributes == simpleType.getAttributes()) {
            return simpleType;
        }
        if (newArguments.isEmpty()) {
            return simpleType.replaceAttributes(newAttributes);
        }
        return KotlinTypeFactory.simpleType$default(newAttributes, simpleType.getConstructor(), newArguments, simpleType.isMarkedNullable(), (KotlinTypeRefiner) null, 16, (Object) null);
    }
}
