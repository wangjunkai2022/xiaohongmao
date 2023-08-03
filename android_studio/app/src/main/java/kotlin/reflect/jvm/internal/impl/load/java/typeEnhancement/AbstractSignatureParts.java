package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import m8.g;
import m8.h;

/* compiled from: AbstractSignatureParts.kt */
/* loaded from: classes4.dex */
public abstract class AbstractSignatureParts<TAnnotation> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractSignatureParts.kt */
    /* loaded from: classes4.dex */
    public static final class TypeAndDefaultQualifiers {
        @h
        private final JavaTypeQualifiersByElementType defaultQualifiers;
        @h
        private final KotlinTypeMarker type;
        @h
        private final TypeParameterMarker typeParameterForArgument;

        public TypeAndDefaultQualifiers(@h KotlinTypeMarker kotlinTypeMarker, @h JavaTypeQualifiersByElementType javaTypeQualifiersByElementType, @h TypeParameterMarker typeParameterMarker) {
            this.type = kotlinTypeMarker;
            this.defaultQualifiers = javaTypeQualifiersByElementType;
            this.typeParameterForArgument = typeParameterMarker;
        }

        @h
        public final JavaTypeQualifiersByElementType getDefaultQualifiers() {
            return this.defaultQualifiers;
        }

        @h
        public final KotlinTypeMarker getType() {
            return this.type;
        }

        @h
        public final TypeParameterMarker getTypeParameterForArgument() {
            return this.typeParameterForArgument;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JavaTypeQualifiersByElementType extractAndMergeDefaultQualifiers(KotlinTypeMarker kotlinTypeMarker, JavaTypeQualifiersByElementType javaTypeQualifiersByElementType) {
        return getAnnotationTypeQualifierResolver().extractAndMergeDefaultQualifiers(javaTypeQualifiersByElementType, getAnnotations(kotlinTypeMarker));
    }

    private final JavaTypeQualifiers extractQualifiers(KotlinTypeMarker kotlinTypeMarker) {
        NullabilityQualifier nullabilityQualifier;
        NullabilityQualifier nullabilityQualifier2 = getNullabilityQualifier(kotlinTypeMarker);
        MutabilityQualifier mutabilityQualifier = null;
        if (nullabilityQualifier2 == null) {
            KotlinTypeMarker enhancedForWarnings = getEnhancedForWarnings(kotlinTypeMarker);
            nullabilityQualifier = enhancedForWarnings != null ? getNullabilityQualifier(enhancedForWarnings) : null;
        } else {
            nullabilityQualifier = nullabilityQualifier2;
        }
        TypeSystemContext typeSystem = getTypeSystem();
        JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.INSTANCE;
        if (javaToKotlinClassMap.isReadOnly(getFqNameUnsafe(typeSystem.lowerBoundIfFlexible(kotlinTypeMarker)))) {
            mutabilityQualifier = MutabilityQualifier.READ_ONLY;
        } else if (javaToKotlinClassMap.isMutable(getFqNameUnsafe(typeSystem.upperBoundIfFlexible(kotlinTypeMarker)))) {
            mutabilityQualifier = MutabilityQualifier.MUTABLE;
        }
        return new JavaTypeQualifiers(nullabilityQualifier, mutabilityQualifier, getTypeSystem().isDefinitelyNotNullType(kotlinTypeMarker) || isNotNullTypeParameterCompat(kotlinTypeMarker), nullabilityQualifier != nullabilityQualifier2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x012a, code lost:
        if ((r0 != null && r0.getDefinitelyNotNull()) != false) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers extractQualifiersFromAnnotations(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts.TypeAndDefaultQualifiers r12) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts.extractQualifiersFromAnnotations(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$TypeAndDefaultQualifiers):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers");
    }

    private final <T> void flattenTree(T t9, List<T> list, Function1<? super T, ? extends Iterable<? extends T>> function1) {
        list.add(t9);
        Iterable<? extends T> invoke = function1.invoke(t9);
        if (invoke != null) {
            for (T t10 : invoke) {
                flattenTree(t10, list, function1);
            }
        }
    }

    private final NullabilityQualifierWithMigrationStatus getBoundsNullability(TypeParameterMarker typeParameterMarker) {
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        List<KotlinTypeMarker> arrayList;
        boolean z14;
        TypeSystemContext typeSystem = getTypeSystem();
        NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = null;
        if (isFromJava(typeParameterMarker)) {
            List<KotlinTypeMarker> upperBounds = typeSystem.getUpperBounds(typeParameterMarker);
            boolean z15 = upperBounds instanceof Collection;
            if (!z15 || !upperBounds.isEmpty()) {
                for (KotlinTypeMarker kotlinTypeMarker : upperBounds) {
                    if (!typeSystem.isError(kotlinTypeMarker)) {
                        z9 = false;
                        break;
                    }
                }
            }
            z9 = true;
            if (z9) {
                return null;
            }
            if (!z15 || !upperBounds.isEmpty()) {
                for (KotlinTypeMarker kotlinTypeMarker2 : upperBounds) {
                    if (getNullabilityQualifier(kotlinTypeMarker2) != null) {
                        z10 = true;
                        continue;
                    } else {
                        z10 = false;
                        continue;
                    }
                    if (z10) {
                        z11 = true;
                        break;
                    }
                }
            }
            z11 = false;
            if (!z11) {
                if (!z15 || !upperBounds.isEmpty()) {
                    for (KotlinTypeMarker kotlinTypeMarker3 : upperBounds) {
                        if (getEnhancedForWarnings(kotlinTypeMarker3) != null) {
                            z12 = true;
                            continue;
                        } else {
                            z12 = false;
                            continue;
                        }
                        if (z12) {
                            z13 = true;
                            break;
                        }
                    }
                }
                z13 = false;
                if (z13) {
                    arrayList = new ArrayList<>();
                    for (KotlinTypeMarker kotlinTypeMarker4 : upperBounds) {
                        KotlinTypeMarker enhancedForWarnings = getEnhancedForWarnings(kotlinTypeMarker4);
                        if (enhancedForWarnings != null) {
                            arrayList.add(enhancedForWarnings);
                        }
                    }
                }
                return nullabilityQualifierWithMigrationStatus;
            }
            arrayList = upperBounds;
            if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                for (KotlinTypeMarker kotlinTypeMarker5 : arrayList) {
                    if (!typeSystem.isNullableType(kotlinTypeMarker5)) {
                        z14 = false;
                        break;
                    }
                }
            }
            z14 = true;
            nullabilityQualifierWithMigrationStatus = new NullabilityQualifierWithMigrationStatus(z14 ? NullabilityQualifier.NULLABLE : NullabilityQualifier.NOT_NULL, arrayList != upperBounds);
            return nullabilityQualifierWithMigrationStatus;
        }
        return null;
    }

    private final NullabilityQualifier getNullabilityQualifier(KotlinTypeMarker kotlinTypeMarker) {
        TypeSystemContext typeSystem = getTypeSystem();
        if (typeSystem.isMarkedNullable(typeSystem.lowerBoundIfFlexible(kotlinTypeMarker))) {
            return NullabilityQualifier.NULLABLE;
        }
        if (typeSystem.isMarkedNullable(typeSystem.upperBoundIfFlexible(kotlinTypeMarker))) {
            return null;
        }
        return NullabilityQualifier.NOT_NULL;
    }

    private final NullabilityQualifierWithMigrationStatus mostSpecific(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus2) {
        return nullabilityQualifierWithMigrationStatus == null ? nullabilityQualifierWithMigrationStatus2 : nullabilityQualifierWithMigrationStatus2 == null ? nullabilityQualifierWithMigrationStatus : (!nullabilityQualifierWithMigrationStatus.isForWarningOnly() || nullabilityQualifierWithMigrationStatus2.isForWarningOnly()) ? (nullabilityQualifierWithMigrationStatus.isForWarningOnly() || !nullabilityQualifierWithMigrationStatus2.isForWarningOnly()) ? (nullabilityQualifierWithMigrationStatus.getQualifier().compareTo(nullabilityQualifierWithMigrationStatus2.getQualifier()) >= 0 && nullabilityQualifierWithMigrationStatus.getQualifier().compareTo(nullabilityQualifierWithMigrationStatus2.getQualifier()) > 0) ? nullabilityQualifierWithMigrationStatus : nullabilityQualifierWithMigrationStatus2 : nullabilityQualifierWithMigrationStatus : nullabilityQualifierWithMigrationStatus2;
    }

    private final List<TypeAndDefaultQualifiers> toIndexed(KotlinTypeMarker kotlinTypeMarker) {
        return flattenTree(new TypeAndDefaultQualifiers(kotlinTypeMarker, extractAndMergeDefaultQualifiers(kotlinTypeMarker, getContainerDefaultTypeQualifiers()), null), new AbstractSignatureParts$toIndexed$1$1(this, getTypeSystem()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
        if (r10 != false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0079  */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlin.jvm.functions.Function1<java.lang.Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers> computeIndexedQualifiers(@m8.g kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r10, @m8.g java.lang.Iterable<? extends kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker> r11, @m8.h kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementInfo r12, boolean r13) {
        /*
            r9 = this;
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "overrides"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.util.List r0 = r9.toIndexed(r10)
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = 10
            int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r11, r2)
            r1.<init>(r2)
            java.util.Iterator r2 = r11.iterator()
        L1d:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L31
            java.lang.Object r3 = r2.next()
            kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r3 = (kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker) r3
            java.util.List r3 = r9.toIndexed(r3)
            r1.add(r3)
            goto L1d
        L31:
            boolean r2 = r9.getForceOnlyHeadTypeConstructor()
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L6b
            boolean r2 = r9.isCovariant()
            if (r2 == 0) goto L69
            boolean r2 = r11 instanceof java.util.Collection
            if (r2 == 0) goto L4e
            r2 = r11
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L4e
        L4c:
            r10 = 0
            goto L66
        L4e:
            java.util.Iterator r11 = r11.iterator()
        L52:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto L4c
            java.lang.Object r2 = r11.next()
            kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r2 = (kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker) r2
            boolean r2 = r9.isEqual(r10, r2)
            r2 = r2 ^ r4
            if (r2 == 0) goto L52
            r10 = 1
        L66:
            if (r10 == 0) goto L69
            goto L6b
        L69:
            r10 = 0
            goto L6c
        L6b:
            r10 = 1
        L6c:
            if (r10 == 0) goto L70
            r10 = 1
            goto L74
        L70:
            int r10 = r0.size()
        L74:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers[] r11 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers[r10]
            r2 = 0
        L77:
            if (r2 >= r10) goto Ld1
            java.lang.Object r5 = r0.get(r2)
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$TypeAndDefaultQualifiers r5 = (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts.TypeAndDefaultQualifiers) r5
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r5 = r9.extractQualifiersFromAnnotations(r5)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.Iterator r7 = r1.iterator()
        L8c:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto Lb2
            java.lang.Object r8 = r7.next()
            java.util.List r8 = (java.util.List) r8
            java.lang.Object r8 = kotlin.collections.CollectionsKt.getOrNull(r8, r2)
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$TypeAndDefaultQualifiers r8 = (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts.TypeAndDefaultQualifiers) r8
            if (r8 == 0) goto Lab
            kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker r8 = r8.getType()
            if (r8 == 0) goto Lab
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r8 = r9.extractQualifiers(r8)
            goto Lac
        Lab:
            r8 = 0
        Lac:
            if (r8 == 0) goto L8c
            r6.add(r8)
            goto L8c
        Lb2:
            if (r2 != 0) goto Lbc
            boolean r7 = r9.isCovariant()
            if (r7 == 0) goto Lbc
            r7 = 1
            goto Lbd
        Lbc:
            r7 = 0
        Lbd:
            if (r2 != 0) goto Lc7
            boolean r8 = r9.getContainerIsVarargParameter()
            if (r8 == 0) goto Lc7
            r8 = 1
            goto Lc8
        Lc7:
            r8 = 0
        Lc8:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementUtilsKt.computeQualifiersForOverride(r5, r6, r7, r8, r13)
            r11[r2] = r5
            int r2 = r2 + 1
            goto L77
        Ld1:
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$computeIndexedQualifiers$1 r10 = new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts$computeIndexedQualifiers$1
            r10.<init>(r12, r11)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts.computeIndexedQualifiers(kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker, java.lang.Iterable, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementInfo, boolean):kotlin.jvm.functions.Function1");
    }

    @g
    public abstract AbstractAnnotationTypeQualifierResolver<TAnnotation> getAnnotationTypeQualifierResolver();

    @g
    public abstract Iterable<TAnnotation> getAnnotations(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    public abstract Iterable<TAnnotation> getContainerAnnotations();

    @g
    public abstract AnnotationQualifierApplicabilityType getContainerApplicabilityType();

    @h
    public abstract JavaTypeQualifiersByElementType getContainerDefaultTypeQualifiers();

    public abstract boolean getContainerIsVarargParameter();

    public abstract boolean getEnableImprovementsInStrictMode();

    @h
    public abstract KotlinTypeMarker getEnhancedForWarnings(@g KotlinTypeMarker kotlinTypeMarker);

    public boolean getForceOnlyHeadTypeConstructor() {
        return false;
    }

    public abstract boolean getForceWarning(@g TAnnotation tannotation);

    @h
    public abstract FqNameUnsafe getFqNameUnsafe(@g KotlinTypeMarker kotlinTypeMarker);

    public abstract boolean getSkipRawTypeArguments();

    @g
    public abstract TypeSystemContext getTypeSystem();

    public abstract boolean isArrayOrPrimitiveArray(@g KotlinTypeMarker kotlinTypeMarker);

    public abstract boolean isCovariant();

    public abstract boolean isEqual(@g KotlinTypeMarker kotlinTypeMarker, @g KotlinTypeMarker kotlinTypeMarker2);

    public abstract boolean isFromJava(@g TypeParameterMarker typeParameterMarker);

    public boolean isNotNullTypeParameterCompat(@g KotlinTypeMarker kotlinTypeMarker) {
        Intrinsics.checkNotNullParameter(kotlinTypeMarker, "<this>");
        return false;
    }

    private final <T> List<T> flattenTree(T t9, Function1<? super T, ? extends Iterable<? extends T>> function1) {
        ArrayList arrayList = new ArrayList(1);
        flattenTree(t9, arrayList, function1);
        return arrayList;
    }
}
