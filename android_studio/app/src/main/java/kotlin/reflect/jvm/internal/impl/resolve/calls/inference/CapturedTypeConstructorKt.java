package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;
import m8.h;

/* compiled from: CapturedTypeConstructor.kt */
/* loaded from: classes4.dex */
public final class CapturedTypeConstructorKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final TypeProjection createCapturedIfNeeded(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor == null || typeProjection.getProjectionKind() == Variance.INVARIANT) {
            return typeProjection;
        }
        if (typeParameterDescriptor.getVariance() == typeProjection.getProjectionKind()) {
            if (typeProjection.isStarProjection()) {
                StorageManager NO_LOCKS = LockBasedStorageManager.NO_LOCKS;
                Intrinsics.checkNotNullExpressionValue(NO_LOCKS, "NO_LOCKS");
                return new TypeProjectionImpl(new LazyWrappedType(NO_LOCKS, new CapturedTypeConstructorKt$createCapturedIfNeeded$1(typeProjection)));
            }
            return new TypeProjectionImpl(typeProjection.getType());
        }
        return new TypeProjectionImpl(createCapturedType(typeProjection));
    }

    @g
    public static final KotlinType createCapturedType(@g TypeProjection typeProjection) {
        Intrinsics.checkNotNullParameter(typeProjection, "typeProjection");
        return new CapturedType(typeProjection, null, false, null, 14, null);
    }

    public static final boolean isCaptured(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return kotlinType.getConstructor() instanceof CapturedTypeConstructor;
    }

    @g
    public static final TypeSubstitution wrapWithCapturingSubstitution(@g final TypeSubstitution typeSubstitution, final boolean z9) {
        List<Pair> zip;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(typeSubstitution, "<this>");
        if (typeSubstitution instanceof IndexedParametersSubstitution) {
            IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
            TypeParameterDescriptor[] parameters = indexedParametersSubstitution.getParameters();
            zip = ArraysKt___ArraysKt.zip(indexedParametersSubstitution.getArguments(), indexedParametersSubstitution.getParameters());
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(zip, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Pair pair : zip) {
                arrayList.add(createCapturedIfNeeded((TypeProjection) pair.getFirst(), (TypeParameterDescriptor) pair.getSecond()));
            }
            Object[] array = arrayList.toArray(new TypeProjection[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            return new IndexedParametersSubstitution(parameters, (TypeProjection[]) array, z9);
        }
        return new DelegatedTypeSubstitution(typeSubstitution) { // from class: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt$wrapWithCapturingSubstitution$2
            @Override // kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution, kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
            public boolean approximateContravariantCapturedTypes() {
                return z9;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution, kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
            @h
            public TypeProjection get(@g KotlinType key) {
                TypeProjection createCapturedIfNeeded;
                Intrinsics.checkNotNullParameter(key, "key");
                TypeProjection typeProjection = super.get(key);
                if (typeProjection != null) {
                    ClassifierDescriptor declarationDescriptor = key.getConstructor().getDeclarationDescriptor();
                    createCapturedIfNeeded = CapturedTypeConstructorKt.createCapturedIfNeeded(typeProjection, declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null);
                    return createCapturedIfNeeded;
                }
                return null;
            }
        };
    }

    public static /* synthetic */ TypeSubstitution wrapWithCapturingSubstitution$default(TypeSubstitution typeSubstitution, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = true;
        }
        return wrapWithCapturingSubstitution(typeSubstitution, z9);
    }
}
