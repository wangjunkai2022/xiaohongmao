package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: JvmAnnotationNames.kt */
/* loaded from: classes4.dex */
public final class JvmAnnotationNamesKt {
    @g
    private static final FqName ANDROIDX_RECENTLY_NON_NULL_ANNOTATION;
    @g
    private static final FqName ANDROIDX_RECENTLY_NULLABLE_ANNOTATION;
    @g
    private static final FqName COMPATQUAL_NONNULL_ANNOTATION;
    @g
    private static final FqName COMPATQUAL_NULLABLE_ANNOTATION;
    @g
    private static final FqName JAVAX_CHECKFORNULL_ANNOTATION;
    @g
    private static final FqName JAVAX_NONNULL_ANNOTATION;
    @g
    private static final FqName JSPECIFY_NULLABLE;
    @g
    private static final FqName JSPECIFY_NULLNESS_UNKNOWN;
    @g
    private static final FqName JSPECIFY_NULL_MARKED;
    @g
    private static final Set<FqName> MUTABLE_ANNOTATIONS;
    @g
    private static final List<FqName> NOT_NULL_ANNOTATIONS;
    @g
    private static final Set<FqName> NULLABILITY_ANNOTATIONS;
    @g
    private static final List<FqName> NULLABLE_ANNOTATIONS;
    @g
    private static final Set<FqName> READ_ONLY_ANNOTATIONS;
    @g
    private static final Map<FqName, FqName> javaToKotlinNameMap;

    static {
        List<FqName> listOf;
        List<FqName> listOf2;
        Set plus;
        Set plus2;
        Set plus3;
        Set plus4;
        Set plus5;
        Set plus6;
        Set plus7;
        Set plus8;
        Set plus9;
        Set<FqName> plus10;
        Set<FqName> of;
        Set<FqName> of2;
        Map<FqName, FqName> mapOf;
        FqName fqName = new FqName("org.jspecify.nullness.Nullable");
        JSPECIFY_NULLABLE = fqName;
        FqName fqName2 = new FqName("org.jspecify.nullness.NullnessUnspecified");
        JSPECIFY_NULLNESS_UNKNOWN = fqName2;
        FqName fqName3 = new FqName("org.jspecify.nullness.NullMarked");
        JSPECIFY_NULL_MARKED = fqName3;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{JvmAnnotationNames.JETBRAINS_NULLABLE_ANNOTATION, new FqName("androidx.annotation.Nullable"), new FqName("android.support.annotation.Nullable"), new FqName("android.annotation.Nullable"), new FqName("com.android.annotations.Nullable"), new FqName("org.eclipse.jdt.annotation.Nullable"), new FqName("org.checkerframework.checker.nullness.qual.Nullable"), new FqName("javax.annotation.Nullable"), new FqName("javax.annotation.CheckForNull"), new FqName("edu.umd.cs.findbugs.annotations.CheckForNull"), new FqName("edu.umd.cs.findbugs.annotations.Nullable"), new FqName("edu.umd.cs.findbugs.annotations.PossiblyNull"), new FqName("io.reactivex.annotations.Nullable"), new FqName("io.reactivex.rxjava3.annotations.Nullable")});
        NULLABLE_ANNOTATIONS = listOf;
        FqName fqName4 = new FqName("javax.annotation.Nonnull");
        JAVAX_NONNULL_ANNOTATION = fqName4;
        JAVAX_CHECKFORNULL_ANNOTATION = new FqName("javax.annotation.CheckForNull");
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{JvmAnnotationNames.JETBRAINS_NOT_NULL_ANNOTATION, new FqName("edu.umd.cs.findbugs.annotations.NonNull"), new FqName("androidx.annotation.NonNull"), new FqName("android.support.annotation.NonNull"), new FqName("android.annotation.NonNull"), new FqName("com.android.annotations.NonNull"), new FqName("org.eclipse.jdt.annotation.NonNull"), new FqName("org.checkerframework.checker.nullness.qual.NonNull"), new FqName("lombok.NonNull"), new FqName("io.reactivex.annotations.NonNull"), new FqName("io.reactivex.rxjava3.annotations.NonNull")});
        NOT_NULL_ANNOTATIONS = listOf2;
        FqName fqName5 = new FqName("org.checkerframework.checker.nullness.compatqual.NullableDecl");
        COMPATQUAL_NULLABLE_ANNOTATION = fqName5;
        FqName fqName6 = new FqName("org.checkerframework.checker.nullness.compatqual.NonNullDecl");
        COMPATQUAL_NONNULL_ANNOTATION = fqName6;
        FqName fqName7 = new FqName("androidx.annotation.RecentlyNullable");
        ANDROIDX_RECENTLY_NULLABLE_ANNOTATION = fqName7;
        FqName fqName8 = new FqName("androidx.annotation.RecentlyNonNull");
        ANDROIDX_RECENTLY_NON_NULL_ANNOTATION = fqName8;
        plus = SetsKt___SetsKt.plus((Set) new LinkedHashSet(), (Iterable) listOf);
        plus2 = SetsKt___SetsKt.plus(plus, fqName4);
        plus3 = SetsKt___SetsKt.plus(plus2, (Iterable) listOf2);
        plus4 = SetsKt___SetsKt.plus(plus3, fqName5);
        plus5 = SetsKt___SetsKt.plus(plus4, fqName6);
        plus6 = SetsKt___SetsKt.plus(plus5, fqName7);
        plus7 = SetsKt___SetsKt.plus(plus6, fqName8);
        plus8 = SetsKt___SetsKt.plus(plus7, fqName);
        plus9 = SetsKt___SetsKt.plus(plus8, fqName2);
        plus10 = SetsKt___SetsKt.plus(plus9, fqName3);
        NULLABILITY_ANNOTATIONS = plus10;
        of = SetsKt__SetsKt.setOf((Object[]) new FqName[]{JvmAnnotationNames.JETBRAINS_READONLY_ANNOTATION, JvmAnnotationNames.READONLY_ANNOTATION});
        READ_ONLY_ANNOTATIONS = of;
        of2 = SetsKt__SetsKt.setOf((Object[]) new FqName[]{JvmAnnotationNames.JETBRAINS_MUTABLE_ANNOTATION, JvmAnnotationNames.MUTABLE_ANNOTATION});
        MUTABLE_ANNOTATIONS = of2;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(JvmAnnotationNames.TARGET_ANNOTATION, StandardNames.FqNames.target), TuplesKt.to(JvmAnnotationNames.RETENTION_ANNOTATION, StandardNames.FqNames.retention), TuplesKt.to(JvmAnnotationNames.DEPRECATED_ANNOTATION, StandardNames.FqNames.deprecated), TuplesKt.to(JvmAnnotationNames.DOCUMENTED_ANNOTATION, StandardNames.FqNames.mustBeDocumented));
        javaToKotlinNameMap = mapOf;
    }

    @g
    public static final FqName getANDROIDX_RECENTLY_NON_NULL_ANNOTATION() {
        return ANDROIDX_RECENTLY_NON_NULL_ANNOTATION;
    }

    @g
    public static final FqName getANDROIDX_RECENTLY_NULLABLE_ANNOTATION() {
        return ANDROIDX_RECENTLY_NULLABLE_ANNOTATION;
    }

    @g
    public static final FqName getCOMPATQUAL_NONNULL_ANNOTATION() {
        return COMPATQUAL_NONNULL_ANNOTATION;
    }

    @g
    public static final FqName getCOMPATQUAL_NULLABLE_ANNOTATION() {
        return COMPATQUAL_NULLABLE_ANNOTATION;
    }

    @g
    public static final FqName getJAVAX_CHECKFORNULL_ANNOTATION() {
        return JAVAX_CHECKFORNULL_ANNOTATION;
    }

    @g
    public static final FqName getJAVAX_NONNULL_ANNOTATION() {
        return JAVAX_NONNULL_ANNOTATION;
    }

    @g
    public static final FqName getJSPECIFY_NULLABLE() {
        return JSPECIFY_NULLABLE;
    }

    @g
    public static final FqName getJSPECIFY_NULLNESS_UNKNOWN() {
        return JSPECIFY_NULLNESS_UNKNOWN;
    }

    @g
    public static final FqName getJSPECIFY_NULL_MARKED() {
        return JSPECIFY_NULL_MARKED;
    }

    @g
    public static final Set<FqName> getMUTABLE_ANNOTATIONS() {
        return MUTABLE_ANNOTATIONS;
    }

    @g
    public static final List<FqName> getNOT_NULL_ANNOTATIONS() {
        return NOT_NULL_ANNOTATIONS;
    }

    @g
    public static final List<FqName> getNULLABLE_ANNOTATIONS() {
        return NULLABLE_ANNOTATIONS;
    }

    @g
    public static final Set<FqName> getREAD_ONLY_ANNOTATIONS() {
        return READ_ONLY_ANNOTATIONS;
    }
}
