package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;

/* compiled from: signatureEnhancement.kt */
/* loaded from: classes4.dex */
public final class SignatureEnhancement {
    @g
    private final JavaTypeEnhancement typeEnhancement;

    public SignatureEnhancement(@g JavaTypeEnhancement typeEnhancement) {
        Intrinsics.checkNotNullParameter(typeEnhancement, "typeEnhancement");
        this.typeEnhancement = typeEnhancement;
    }

    private final boolean containsFunctionN(KotlinType kotlinType) {
        return TypeUtils.contains(kotlinType, SignatureEnhancement$containsFunctionN$1.INSTANCE);
    }

    private final KotlinType enhance(CallableMemberDescriptor callableMemberDescriptor, Annotated annotated, boolean z9, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, TypeEnhancementInfo typeEnhancementInfo, boolean z10, Function1<? super CallableMemberDescriptor, ? extends KotlinType> function1) {
        int collectionSizeOrDefault;
        SignatureParts signatureParts = new SignatureParts(annotated, z9, lazyJavaResolverContext, annotationQualifierApplicabilityType, false, 16, null);
        KotlinType invoke = function1.invoke(callableMemberDescriptor);
        Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
        Intrinsics.checkNotNullExpressionValue(overriddenDescriptors, "overriddenDescriptors");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(overriddenDescriptors, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CallableMemberDescriptor it : overriddenDescriptors) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(function1.invoke(it));
        }
        return enhance(signatureParts, invoke, arrayList, typeEnhancementInfo, z10);
    }

    static /* synthetic */ KotlinType enhance$default(SignatureEnhancement signatureEnhancement, CallableMemberDescriptor callableMemberDescriptor, Annotated annotated, boolean z9, LazyJavaResolverContext lazyJavaResolverContext, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, TypeEnhancementInfo typeEnhancementInfo, boolean z10, Function1 function1, int i4, Object obj) {
        return signatureEnhancement.enhance(callableMemberDescriptor, annotated, z9, lazyJavaResolverContext, annotationQualifierApplicabilityType, typeEnhancementInfo, (i4 & 32) != 0 ? false : z10, function1);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01ef A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final <D extends kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor> D enhanceSignature(D r21, kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext r22) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement.enhanceSignature(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext):kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor");
    }

    private final KotlinType enhanceValueParameter(CallableMemberDescriptor callableMemberDescriptor, ValueParameterDescriptor valueParameterDescriptor, LazyJavaResolverContext lazyJavaResolverContext, TypeEnhancementInfo typeEnhancementInfo, boolean z9, Function1<? super CallableMemberDescriptor, ? extends KotlinType> function1) {
        LazyJavaResolverContext copyWithNewDefaultTypeQualifiers;
        return enhance(callableMemberDescriptor, valueParameterDescriptor, false, (valueParameterDescriptor == null || (copyWithNewDefaultTypeQualifiers = ContextKt.copyWithNewDefaultTypeQualifiers(lazyJavaResolverContext, valueParameterDescriptor.getAnnotations())) == null) ? lazyJavaResolverContext : copyWithNewDefaultTypeQualifiers, AnnotationQualifierApplicabilityType.VALUE_PARAMETER, typeEnhancementInfo, z9, function1);
    }

    private final <D extends CallableMemberDescriptor> Annotations getDefaultAnnotations(D d4, LazyJavaResolverContext lazyJavaResolverContext) {
        int collectionSizeOrDefault;
        List<? extends AnnotationDescriptor> plus;
        ClassifierDescriptor topLevelContainingClassifier = DescriptorUtilKt.getTopLevelContainingClassifier(d4);
        if (topLevelContainingClassifier == null) {
            return d4.getAnnotations();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptor = topLevelContainingClassifier instanceof LazyJavaClassDescriptor ? (LazyJavaClassDescriptor) topLevelContainingClassifier : null;
        List<JavaAnnotation> moduleAnnotations = lazyJavaClassDescriptor != null ? lazyJavaClassDescriptor.getModuleAnnotations() : null;
        if (moduleAnnotations == null || moduleAnnotations.isEmpty()) {
            return d4.getAnnotations();
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(moduleAnnotations, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (JavaAnnotation javaAnnotation : moduleAnnotations) {
            arrayList.add(new LazyJavaAnnotationDescriptor(lazyJavaResolverContext, javaAnnotation, true));
        }
        Annotations.Companion companion = Annotations.Companion;
        plus = CollectionsKt___CollectionsKt.plus((Iterable) d4.getAnnotations(), (Iterable) arrayList);
        return companion.create(plus);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public final <D extends CallableMemberDescriptor> Collection<D> enhanceSignatures(@g LazyJavaResolverContext c10, @g Collection<? extends D> platformSignatures) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(platformSignatures, "platformSignatures");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(platformSignatures, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = platformSignatures.iterator();
        while (it.hasNext()) {
            arrayList.add(enhanceSignature((CallableMemberDescriptor) it.next(), c10));
        }
        return arrayList;
    }

    @g
    public final KotlinType enhanceSuperType(@g KotlinType type, @g LazyJavaResolverContext context) {
        List emptyList;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(context, "context");
        SignatureParts signatureParts = new SignatureParts(null, false, context, AnnotationQualifierApplicabilityType.TYPE_USE, true);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        KotlinType enhance$default = enhance$default(this, signatureParts, type, emptyList, null, false, 12, null);
        return enhance$default == null ? type : enhance$default;
    }

    @g
    public final List<KotlinType> enhanceTypeParameterBounds(@g TypeParameterDescriptor typeParameter, @g List<? extends KotlinType> bounds, @g LazyJavaResolverContext context) {
        int collectionSizeOrDefault;
        List emptyList;
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(context, "context");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(bounds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (KotlinType kotlinType : bounds) {
            if (!TypeUtilsKt.contains(kotlinType, SignatureEnhancement$enhanceTypeParameterBounds$1$1.INSTANCE)) {
                SignatureParts signatureParts = new SignatureParts(typeParameter, false, context, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, false, 16, null);
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                KotlinType enhance$default = enhance$default(this, signatureParts, kotlinType, emptyList, null, false, 12, null);
                if (enhance$default != null) {
                    kotlinType = enhance$default;
                }
            }
            arrayList.add(kotlinType);
        }
        return arrayList;
    }

    static /* synthetic */ KotlinType enhance$default(SignatureEnhancement signatureEnhancement, SignatureParts signatureParts, KotlinType kotlinType, List list, TypeEnhancementInfo typeEnhancementInfo, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            typeEnhancementInfo = null;
        }
        return signatureEnhancement.enhance(signatureParts, kotlinType, list, typeEnhancementInfo, (i4 & 8) != 0 ? false : z9);
    }

    private final KotlinType enhance(SignatureParts signatureParts, KotlinType kotlinType, List<? extends KotlinType> list, TypeEnhancementInfo typeEnhancementInfo, boolean z9) {
        return this.typeEnhancement.enhance(kotlinType, signatureParts.computeIndexedQualifiers(kotlinType, list, typeEnhancementInfo, z9), signatureParts.getSkipRawTypeArguments());
    }
}
