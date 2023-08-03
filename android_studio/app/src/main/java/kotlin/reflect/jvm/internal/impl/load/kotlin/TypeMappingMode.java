package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.core.app.FrameMetricsAggregator;
import com.google.android.exoplayer2.analytics.j1;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;
import m8.h;

/* compiled from: TypeMappingMode.kt */
/* loaded from: classes4.dex */
public final class TypeMappingMode {
    @JvmField
    @g
    public static final TypeMappingMode CLASS_DECLARATION;
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final TypeMappingMode DEFAULT;
    @JvmField
    @g
    public static final TypeMappingMode DEFAULT_UAST;
    @JvmField
    @g
    public static final TypeMappingMode GENERIC_ARGUMENT;
    @JvmField
    @g
    public static final TypeMappingMode GENERIC_ARGUMENT_UAST;
    @JvmField
    @g
    public static final TypeMappingMode RETURN_TYPE_BOXED;
    @JvmField
    @g
    public static final TypeMappingMode SUPER_TYPE;
    @JvmField
    @g
    public static final TypeMappingMode SUPER_TYPE_KOTLIN_COLLECTIONS_AS_IS;
    @JvmField
    @g
    public static final TypeMappingMode VALUE_FOR_ANNOTATION;
    @h
    private final TypeMappingMode genericArgumentMode;
    @h
    private final TypeMappingMode genericContravariantArgumentMode;
    @h
    private final TypeMappingMode genericInvariantArgumentMode;
    private final boolean isForAnnotationParameter;
    private final boolean kotlinCollectionsToJavaCollections;
    private final boolean mapTypeAliases;
    private final boolean needInlineClassWrapping;
    private final boolean needPrimitiveBoxing;
    private final boolean skipDeclarationSiteWildcards;
    private final boolean skipDeclarationSiteWildcardsIfPossible;

    /* compiled from: TypeMappingMode.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: TypeMappingMode.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.IN_VARIANCE.ordinal()] = 1;
            iArr[Variance.INVARIANT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        TypeMappingMode typeMappingMode = new TypeMappingMode(false, false, false, false, false, null, false, null, null, false, j1.M, null);
        GENERIC_ARGUMENT = typeMappingMode;
        TypeMappingMode typeMappingMode2 = new TypeMappingMode(false, false, false, false, false, null, false, null, null, true, FrameMetricsAggregator.EVERY_DURATION, null);
        GENERIC_ARGUMENT_UAST = typeMappingMode2;
        RETURN_TYPE_BOXED = new TypeMappingMode(false, true, false, false, false, null, false, null, null, false, 1021, null);
        DEFAULT = new TypeMappingMode(false, false, false, false, false, typeMappingMode, false, null, null, false, 988, null);
        DEFAULT_UAST = new TypeMappingMode(false, false, false, false, false, typeMappingMode2, false, null, null, true, 476, null);
        CLASS_DECLARATION = new TypeMappingMode(false, true, false, false, false, typeMappingMode, false, null, null, false, 988, null);
        SUPER_TYPE = new TypeMappingMode(false, false, false, true, false, typeMappingMode, false, null, null, false, 983, null);
        SUPER_TYPE_KOTLIN_COLLECTIONS_AS_IS = new TypeMappingMode(false, false, false, true, false, typeMappingMode, false, null, null, false, 919, null);
        VALUE_FOR_ANNOTATION = new TypeMappingMode(false, false, true, false, false, typeMappingMode, false, null, null, false, 984, null);
    }

    public TypeMappingMode() {
        this(false, false, false, false, false, null, false, null, null, false, j1.M, null);
    }

    public TypeMappingMode(boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, @h TypeMappingMode typeMappingMode, boolean z14, @h TypeMappingMode typeMappingMode2, @h TypeMappingMode typeMappingMode3, boolean z15) {
        this.needPrimitiveBoxing = z9;
        this.needInlineClassWrapping = z10;
        this.isForAnnotationParameter = z11;
        this.skipDeclarationSiteWildcards = z12;
        this.skipDeclarationSiteWildcardsIfPossible = z13;
        this.genericArgumentMode = typeMappingMode;
        this.kotlinCollectionsToJavaCollections = z14;
        this.genericContravariantArgumentMode = typeMappingMode2;
        this.genericInvariantArgumentMode = typeMappingMode3;
        this.mapTypeAliases = z15;
    }

    public final boolean getKotlinCollectionsToJavaCollections() {
        return this.kotlinCollectionsToJavaCollections;
    }

    public final boolean getMapTypeAliases() {
        return this.mapTypeAliases;
    }

    public final boolean getNeedInlineClassWrapping() {
        return this.needInlineClassWrapping;
    }

    public final boolean getNeedPrimitiveBoxing() {
        return this.needPrimitiveBoxing;
    }

    public final boolean isForAnnotationParameter() {
        return this.isForAnnotationParameter;
    }

    @g
    public final TypeMappingMode toGenericArgumentMode(@g Variance effectiveVariance, boolean z9) {
        Intrinsics.checkNotNullParameter(effectiveVariance, "effectiveVariance");
        if (!z9 || !this.isForAnnotationParameter) {
            int i4 = WhenMappings.$EnumSwitchMapping$0[effectiveVariance.ordinal()];
            if (i4 == 1) {
                TypeMappingMode typeMappingMode = this.genericContravariantArgumentMode;
                if (typeMappingMode != null) {
                    return typeMappingMode;
                }
            } else if (i4 != 2) {
                TypeMappingMode typeMappingMode2 = this.genericArgumentMode;
                if (typeMappingMode2 != null) {
                    return typeMappingMode2;
                }
            } else {
                TypeMappingMode typeMappingMode3 = this.genericInvariantArgumentMode;
                if (typeMappingMode3 != null) {
                    return typeMappingMode3;
                }
            }
        }
        return this;
    }

    @g
    public final TypeMappingMode wrapInlineClassesMode() {
        return new TypeMappingMode(this.needPrimitiveBoxing, true, this.isForAnnotationParameter, this.skipDeclarationSiteWildcards, this.skipDeclarationSiteWildcardsIfPossible, this.genericArgumentMode, this.kotlinCollectionsToJavaCollections, this.genericContravariantArgumentMode, this.genericInvariantArgumentMode, false, 512, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ TypeMappingMode(boolean r12, boolean r13, boolean r14, boolean r15, boolean r16, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r17, boolean r18, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r19, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r20, boolean r21, int r22, kotlin.jvm.internal.DefaultConstructorMarker r23) {
        /*
            r11 = this;
            r0 = r22
            r1 = r0 & 1
            r2 = 1
            if (r1 == 0) goto L9
            r1 = 1
            goto La
        L9:
            r1 = r12
        La:
            r3 = r0 & 2
            if (r3 == 0) goto L10
            r3 = 1
            goto L11
        L10:
            r3 = r13
        L11:
            r4 = r0 & 4
            r5 = 0
            if (r4 == 0) goto L18
            r4 = 0
            goto L19
        L18:
            r4 = r14
        L19:
            r6 = r0 & 8
            if (r6 == 0) goto L1f
            r6 = 0
            goto L20
        L1f:
            r6 = r15
        L20:
            r7 = r0 & 16
            if (r7 == 0) goto L26
            r7 = 0
            goto L28
        L26:
            r7 = r16
        L28:
            r8 = r0 & 32
            if (r8 == 0) goto L2e
            r8 = 0
            goto L30
        L2e:
            r8 = r17
        L30:
            r9 = r0 & 64
            if (r9 == 0) goto L35
            goto L37
        L35:
            r2 = r18
        L37:
            r9 = r0 & 128(0x80, float:1.794E-43)
            if (r9 == 0) goto L3d
            r9 = r8
            goto L3f
        L3d:
            r9 = r19
        L3f:
            r10 = r0 & 256(0x100, float:3.59E-43)
            if (r10 == 0) goto L45
            r10 = r8
            goto L47
        L45:
            r10 = r20
        L47:
            r0 = r0 & 512(0x200, float:7.175E-43)
            if (r0 == 0) goto L4c
            goto L4e
        L4c:
            r5 = r21
        L4e:
            r12 = r11
            r13 = r1
            r14 = r3
            r15 = r4
            r16 = r6
            r17 = r7
            r18 = r8
            r19 = r2
            r20 = r9
            r21 = r10
            r22 = r5
            r12.<init>(r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode.<init>(boolean, boolean, boolean, boolean, boolean, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode, boolean, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
