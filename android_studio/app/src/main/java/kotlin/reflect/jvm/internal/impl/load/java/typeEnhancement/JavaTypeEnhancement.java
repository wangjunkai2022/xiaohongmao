package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: typeEnhancement.kt */
/* loaded from: classes4.dex */
public final class JavaTypeEnhancement {
    @g
    private final JavaResolverSettings javaResolverSettings;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: typeEnhancement.kt */
    /* loaded from: classes4.dex */
    public static final class Result {
        private final int subtreeSize;
        @h
        private final KotlinType type;

        public Result(@h KotlinType kotlinType, int i4) {
            this.type = kotlinType;
            this.subtreeSize = i4;
        }

        public final int getSubtreeSize() {
            return this.subtreeSize;
        }

        @h
        public final KotlinType getType() {
            return this.type;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: typeEnhancement.kt */
    /* loaded from: classes4.dex */
    public static final class SimpleResult {
        private final boolean forWarnings;
        private final int subtreeSize;
        @h
        private final SimpleType type;

        public SimpleResult(@h SimpleType simpleType, int i4, boolean z9) {
            this.type = simpleType;
            this.subtreeSize = i4;
            this.forWarnings = z9;
        }

        public final boolean getForWarnings() {
            return this.forWarnings;
        }

        public final int getSubtreeSize() {
            return this.subtreeSize;
        }

        @h
        public final SimpleType getType() {
            return this.type;
        }
    }

    public JavaTypeEnhancement(@g JavaResolverSettings javaResolverSettings) {
        Intrinsics.checkNotNullParameter(javaResolverSettings, "javaResolverSettings");
        this.javaResolverSettings = javaResolverSettings;
    }

    private final SimpleResult enhanceInflexible(SimpleType simpleType, Function1<? super Integer, JavaTypeQualifiers> function1, int i4, TypeComponentPosition typeComponentPosition, boolean z9, boolean z10) {
        ClassifierDescriptor enhanceMutability;
        Boolean enhancedNullability;
        TypeConstructor constructor;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        EnhancedTypeAnnotations enhancedTypeAnnotations;
        EnhancedTypeAnnotations enhancedTypeAnnotations2;
        List listOfNotNull;
        Annotations compositeAnnotationsOrSingle;
        int collectionSizeOrDefault3;
        int collectionSizeOrDefault4;
        boolean z11;
        boolean z12;
        boolean z13;
        Result result;
        TypeProjection makeStarProjection;
        Function1<? super Integer, JavaTypeQualifiers> function12 = function1;
        boolean shouldEnhance = TypeComponentPositionKt.shouldEnhance(typeComponentPosition);
        boolean z14 = (z10 && z9) ? false : true;
        KotlinType kotlinType = null;
        if (shouldEnhance || !simpleType.getArguments().isEmpty()) {
            ClassifierDescriptor declarationDescriptor = simpleType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor == null) {
                return new SimpleResult(null, 1, false);
            }
            JavaTypeQualifiers invoke = function12.invoke(Integer.valueOf(i4));
            enhanceMutability = TypeEnhancementKt.enhanceMutability(declarationDescriptor, invoke, typeComponentPosition);
            enhancedNullability = TypeEnhancementKt.getEnhancedNullability(invoke, typeComponentPosition);
            if (enhanceMutability == null || (constructor = enhanceMutability.getTypeConstructor()) == null) {
                constructor = simpleType.getConstructor();
            }
            TypeConstructor typeConstructor = constructor;
            Intrinsics.checkNotNullExpressionValue(typeConstructor, "enhancedClassifier?.typeConstructor ?: constructor");
            int i10 = i4 + 1;
            List<TypeProjection> arguments = simpleType.getArguments();
            List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "typeConstructor.parameters");
            Iterator<T> it = arguments.iterator();
            Iterator<T> it2 = parameters.iterator();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arguments, 10);
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
            ArrayList<TypeProjection> arrayList = new ArrayList(Math.min(collectionSizeOrDefault, collectionSizeOrDefault2));
            while (it.hasNext() && it2.hasNext()) {
                Object next = it.next();
                TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it2.next();
                TypeProjection typeProjection = (TypeProjection) next;
                if (!z14) {
                    z13 = z14;
                    result = new Result(kotlinType, 0);
                } else {
                    z13 = z14;
                    if (!typeProjection.isStarProjection()) {
                        result = enhancePossiblyFlexible(typeProjection.getType().unwrap(), function12, i10, z10);
                    } else if (function12.invoke(Integer.valueOf(i10)).getNullability() == NullabilityQualifier.FORCE_FLEXIBILITY) {
                        UnwrappedType unwrap = typeProjection.getType().unwrap();
                        result = new Result(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(unwrap).makeNullableAsSpecified(false), FlexibleTypesKt.upperIfFlexible(unwrap).makeNullableAsSpecified(true)), 1);
                    } else {
                        result = new Result(null, 1);
                    }
                }
                i10 += result.getSubtreeSize();
                if (result.getType() != null) {
                    KotlinType type = result.getType();
                    Variance projectionKind = typeProjection.getProjectionKind();
                    Intrinsics.checkNotNullExpressionValue(projectionKind, "arg.projectionKind");
                    makeStarProjection = TypeUtilsKt.createProjection(type, projectionKind, typeParameterDescriptor);
                } else if (enhanceMutability == null || typeProjection.isStarProjection()) {
                    makeStarProjection = enhanceMutability != null ? TypeUtils.makeStarProjection(typeParameterDescriptor) : null;
                } else {
                    KotlinType type2 = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type2, "arg.type");
                    Variance projectionKind2 = typeProjection.getProjectionKind();
                    Intrinsics.checkNotNullExpressionValue(projectionKind2, "arg.projectionKind");
                    makeStarProjection = TypeUtilsKt.createProjection(type2, projectionKind2, typeParameterDescriptor);
                }
                arrayList.add(makeStarProjection);
                function12 = function1;
                z14 = z13;
                kotlinType = null;
            }
            int i11 = i10 - i4;
            if (enhanceMutability == null && enhancedNullability == null) {
                if (!arrayList.isEmpty()) {
                    for (TypeProjection typeProjection2 : arrayList) {
                        if (typeProjection2 == null) {
                            z11 = true;
                            continue;
                        } else {
                            z11 = false;
                            continue;
                        }
                        if (!z11) {
                            z12 = false;
                            break;
                        }
                    }
                }
                z12 = true;
                if (z12) {
                    return new SimpleResult(null, i11, false);
                }
            }
            Annotations[] annotationsArr = new Annotations[3];
            annotationsArr[0] = simpleType.getAnnotations();
            enhancedTypeAnnotations = TypeEnhancementKt.ENHANCED_MUTABILITY_ANNOTATIONS;
            if (!(enhanceMutability != null)) {
                enhancedTypeAnnotations = null;
            }
            annotationsArr[1] = enhancedTypeAnnotations;
            enhancedTypeAnnotations2 = TypeEnhancementKt.ENHANCED_NULLABILITY_ANNOTATIONS;
            if (!(enhancedNullability != null)) {
                enhancedTypeAnnotations2 = null;
            }
            annotationsArr[2] = enhancedTypeAnnotations2;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) annotationsArr);
            compositeAnnotationsOrSingle = TypeEnhancementKt.compositeAnnotationsOrSingle(listOfNotNull);
            TypeAttributes defaultAttributes = TypeAttributesKt.toDefaultAttributes(compositeAnnotationsOrSingle);
            List<TypeProjection> arguments2 = simpleType.getArguments();
            Iterator it3 = arrayList.iterator();
            Iterator<T> it4 = arguments2.iterator();
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arguments2, 10);
            ArrayList arrayList2 = new ArrayList(Math.min(collectionSizeOrDefault3, collectionSizeOrDefault4));
            while (it3.hasNext() && it4.hasNext()) {
                Object next2 = it3.next();
                TypeProjection typeProjection3 = (TypeProjection) it4.next();
                TypeProjection typeProjection4 = (TypeProjection) next2;
                if (typeProjection4 != null) {
                    typeProjection3 = typeProjection4;
                }
                arrayList2.add(typeProjection3);
            }
            SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(defaultAttributes, typeConstructor, arrayList2, enhancedNullability != null ? enhancedNullability.booleanValue() : simpleType.isMarkedNullable(), (KotlinTypeRefiner) null, 16, (Object) null);
            if (invoke.getDefinitelyNotNull()) {
                simpleType$default = notNullTypeParameter(simpleType$default);
            }
            return new SimpleResult(simpleType$default, i11, enhancedNullability != null && invoke.isNullabilityQualifierForWarning());
        }
        return new SimpleResult(null, 1, false);
    }

    static /* synthetic */ SimpleResult enhanceInflexible$default(JavaTypeEnhancement javaTypeEnhancement, SimpleType simpleType, Function1 function1, int i4, TypeComponentPosition typeComponentPosition, boolean z9, boolean z10, int i10, Object obj) {
        return javaTypeEnhancement.enhanceInflexible(simpleType, function1, i4, typeComponentPosition, (i10 & 8) != 0 ? false : z9, (i10 & 16) != 0 ? false : z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0096, code lost:
        if (r13 == null) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement.Result enhancePossiblyFlexible(kotlin.reflect.jvm.internal.impl.types.UnwrappedType r12, kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers> r13, int r14, boolean r15) {
        /*
            r11 = this;
            boolean r0 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.isError(r12)
            r1 = 0
            if (r0 == 0) goto Le
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result r12 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result
            r13 = 1
            r12.<init>(r1, r13)
            return r12
        Le:
            boolean r0 = r12 instanceof kotlin.reflect.jvm.internal.impl.types.FlexibleType
            if (r0 == 0) goto Lad
            boolean r0 = r12 instanceof kotlin.reflect.jvm.internal.impl.types.RawType
            r9 = r12
            kotlin.reflect.jvm.internal.impl.types.FlexibleType r9 = (kotlin.reflect.jvm.internal.impl.types.FlexibleType) r9
            kotlin.reflect.jvm.internal.impl.types.SimpleType r3 = r9.getLowerBound()
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition r6 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition.FLEXIBLE_LOWER
            r2 = r11
            r4 = r13
            r5 = r14
            r7 = r0
            r8 = r15
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$SimpleResult r10 = r2.enhanceInflexible(r3, r4, r5, r6, r7, r8)
            kotlin.reflect.jvm.internal.impl.types.SimpleType r3 = r9.getUpperBound()
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition r6 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition.FLEXIBLE_UPPER
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$SimpleResult r13 = r2.enhanceInflexible(r3, r4, r5, r6, r7, r8)
            r10.getSubtreeSize()
            r13.getSubtreeSize()
            kotlin.reflect.jvm.internal.impl.types.SimpleType r14 = r10.getType()
            if (r14 != 0) goto L43
            kotlin.reflect.jvm.internal.impl.types.SimpleType r14 = r13.getType()
            if (r14 != 0) goto L43
            goto La3
        L43:
            boolean r14 = r10.getForWarnings()
            if (r14 != 0) goto L85
            boolean r14 = r13.getForWarnings()
            if (r14 == 0) goto L50
            goto L85
        L50:
            if (r0 == 0) goto L6c
            kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl r1 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl
            kotlin.reflect.jvm.internal.impl.types.SimpleType r12 = r10.getType()
            if (r12 != 0) goto L5e
            kotlin.reflect.jvm.internal.impl.types.SimpleType r12 = r9.getLowerBound()
        L5e:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r13 = r13.getType()
            if (r13 != 0) goto L68
            kotlin.reflect.jvm.internal.impl.types.SimpleType r13 = r9.getUpperBound()
        L68:
            r1.<init>(r12, r13)
            goto La3
        L6c:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r12 = r10.getType()
            if (r12 != 0) goto L76
            kotlin.reflect.jvm.internal.impl.types.SimpleType r12 = r9.getLowerBound()
        L76:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r13 = r13.getType()
            if (r13 != 0) goto L80
            kotlin.reflect.jvm.internal.impl.types.SimpleType r13 = r9.getUpperBound()
        L80:
            kotlin.reflect.jvm.internal.impl.types.UnwrappedType r1 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory.flexibleType(r12, r13)
            goto La3
        L85:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r13 = r13.getType()
            if (r13 == 0) goto L98
            kotlin.reflect.jvm.internal.impl.types.SimpleType r14 = r10.getType()
            if (r14 != 0) goto L92
            r14 = r13
        L92:
            kotlin.reflect.jvm.internal.impl.types.UnwrappedType r13 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory.flexibleType(r14, r13)
            if (r13 != 0) goto L9f
        L98:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r13 = r10.getType()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r13)
        L9f:
            kotlin.reflect.jvm.internal.impl.types.UnwrappedType r1 = kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt.wrapEnhancement(r12, r13)
        La3:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result r12 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result
            int r13 = r10.getSubtreeSize()
            r12.<init>(r1, r13)
            goto Ldf
        Lad:
            boolean r0 = r12 instanceof kotlin.reflect.jvm.internal.impl.types.SimpleType
            if (r0 == 0) goto Le0
            r2 = r12
            kotlin.reflect.jvm.internal.impl.types.SimpleType r2 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r2
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition.INFLEXIBLE
            r6 = 0
            r8 = 8
            r9 = 0
            r1 = r11
            r3 = r13
            r4 = r14
            r7 = r15
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$SimpleResult r13 = enhanceInflexible$default(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result r14 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result
            boolean r15 = r13.getForWarnings()
            if (r15 == 0) goto Ld3
            kotlin.reflect.jvm.internal.impl.types.SimpleType r15 = r13.getType()
            kotlin.reflect.jvm.internal.impl.types.UnwrappedType r12 = kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt.wrapEnhancement(r12, r15)
            goto Ld7
        Ld3:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r12 = r13.getType()
        Ld7:
            int r13 = r13.getSubtreeSize()
            r14.<init>(r12, r13)
            r12 = r14
        Ldf:
            return r12
        Le0:
            kotlin.NoWhenBranchMatchedException r12 = new kotlin.NoWhenBranchMatchedException
            r12.<init>()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement.enhancePossiblyFlexible(kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.jvm.functions.Function1, int, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement$Result");
    }

    private final SimpleType notNullTypeParameter(SimpleType simpleType) {
        if (this.javaResolverSettings.getCorrectNullabilityForNotNullTypeParameter()) {
            return SpecialTypesKt.makeSimpleTypeDefinitelyNotNullOrNotNull(simpleType, true);
        }
        return new NotNullTypeParameterImpl(simpleType);
    }

    @h
    public final KotlinType enhance(@g KotlinType kotlinType, @g Function1<? super Integer, JavaTypeQualifiers> qualifiers, boolean z9) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(qualifiers, "qualifiers");
        return enhancePossiblyFlexible(kotlinType.unwrap(), qualifiers, 0, z9).getType();
    }
}
