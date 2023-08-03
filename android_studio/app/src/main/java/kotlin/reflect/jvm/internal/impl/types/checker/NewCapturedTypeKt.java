package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: NewCapturedType.kt */
/* loaded from: classes4.dex */
public final class NewCapturedTypeKt {
    private static final List<TypeProjection> captureArguments(UnwrappedType unwrappedType, CaptureStatus captureStatus) {
        boolean z9;
        List<Pair> zip;
        int collectionSizeOrDefault;
        if (unwrappedType.getArguments().size() != unwrappedType.getConstructor().getParameters().size()) {
            return null;
        }
        List<TypeProjection> arguments = unwrappedType.getArguments();
        boolean z10 = true;
        if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
            Iterator<T> it = arguments.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((TypeProjection) it.next()).getProjectionKind() == Variance.INVARIANT) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (!z9) {
                    z10 = false;
                    break;
                }
            }
        }
        if (z10) {
            return null;
        }
        List<TypeParameterDescriptor> parameters = unwrappedType.getConstructor().getParameters();
        Intrinsics.checkNotNullExpressionValue(parameters, "type.constructor.parameters");
        zip = CollectionsKt___CollectionsKt.zip(arguments, parameters);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(zip, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Pair pair : zip) {
            TypeProjection typeProjection = (TypeProjection) pair.component1();
            TypeParameterDescriptor parameter = (TypeParameterDescriptor) pair.component2();
            if (typeProjection.getProjectionKind() != Variance.INVARIANT) {
                UnwrappedType unwrap = (typeProjection.isStarProjection() || typeProjection.getProjectionKind() != Variance.IN_VARIANCE) ? null : typeProjection.getType().unwrap();
                Intrinsics.checkNotNullExpressionValue(parameter, "parameter");
                typeProjection = TypeUtilsKt.asTypeProjection(new NewCapturedType(captureStatus, unwrap, typeProjection, parameter));
            }
            arrayList.add(typeProjection);
        }
        TypeSubstitutor buildSubstitutor = TypeConstructorSubstitution.Companion.create(unwrappedType.getConstructor(), arrayList).buildSubstitutor();
        int size = arguments.size();
        for (int i4 = 0; i4 < size; i4++) {
            TypeProjection typeProjection2 = arguments.get(i4);
            TypeProjection typeProjection3 = (TypeProjection) arrayList.get(i4);
            if (typeProjection2.getProjectionKind() != Variance.INVARIANT) {
                List<KotlinType> upperBounds = unwrappedType.getConstructor().getParameters().get(i4).getUpperBounds();
                Intrinsics.checkNotNullExpressionValue(upperBounds, "type.constructor.parameters[index].upperBounds");
                ArrayList arrayList2 = new ArrayList();
                for (KotlinType kotlinType : upperBounds) {
                    arrayList2.add(KotlinTypePreparator.Default.INSTANCE.prepareType((KotlinTypeMarker) buildSubstitutor.safeSubstitute(kotlinType, Variance.INVARIANT).unwrap()));
                }
                UnwrappedType prepareType = (typeProjection2.isStarProjection() || typeProjection2.getProjectionKind() != Variance.OUT_VARIANCE) ? null : KotlinTypePreparator.Default.INSTANCE.prepareType((KotlinTypeMarker) typeProjection2.getType().unwrap());
                KotlinType type = typeProjection3.getType();
                Intrinsics.checkNotNull(type, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedType");
                ((NewCapturedType) type).getConstructor().initializeSupertypes(prepareType, arrayList2);
            }
        }
        return arrayList;
    }

    @h
    public static final SimpleType captureFromArguments(@g SimpleType type, @g CaptureStatus status) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        List<TypeProjection> captureArguments = captureArguments(type, status);
        if (captureArguments != null) {
            return replaceArguments(type, captureArguments);
        }
        return null;
    }

    private static final SimpleType replaceArguments(UnwrappedType unwrappedType, List<? extends TypeProjection> list) {
        return KotlinTypeFactory.simpleType$default(unwrappedType.getAttributes(), unwrappedType.getConstructor(), list, unwrappedType.isMarkedNullable(), (KotlinTypeRefiner) null, 16, (Object) null);
    }
}
