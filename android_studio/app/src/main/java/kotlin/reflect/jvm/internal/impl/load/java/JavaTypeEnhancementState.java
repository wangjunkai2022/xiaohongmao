package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: JavaTypeEnhancementState.kt */
/* loaded from: classes4.dex */
public final class JavaTypeEnhancementState {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final JavaTypeEnhancementState DEFAULT = new JavaTypeEnhancementState(JavaNullabilityAnnotationSettingsKt.getDefaultJsr305Settings$default(null, 1, null), JavaTypeEnhancementState$Companion$DEFAULT$1.INSTANCE);
    private final boolean disabledDefaultAnnotations;
    @g
    private final Function1<FqName, ReportLevel> getReportLevelForAnnotation;
    @g
    private final Jsr305Settings jsr305;

    /* compiled from: JavaTypeEnhancementState.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final JavaTypeEnhancementState getDEFAULT() {
            return JavaTypeEnhancementState.DEFAULT;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeEnhancementState(@g Jsr305Settings jsr305, @g Function1<? super FqName, ? extends ReportLevel> getReportLevelForAnnotation) {
        Intrinsics.checkNotNullParameter(jsr305, "jsr305");
        Intrinsics.checkNotNullParameter(getReportLevelForAnnotation, "getReportLevelForAnnotation");
        this.jsr305 = jsr305;
        this.getReportLevelForAnnotation = getReportLevelForAnnotation;
        this.disabledDefaultAnnotations = jsr305.isDisabled() || getReportLevelForAnnotation.invoke(JavaNullabilityAnnotationSettingsKt.getJSPECIFY_ANNOTATIONS_PACKAGE()) == ReportLevel.IGNORE;
    }

    public final boolean getDisabledDefaultAnnotations() {
        return this.disabledDefaultAnnotations;
    }

    @g
    public final Function1<FqName, ReportLevel> getGetReportLevelForAnnotation() {
        return this.getReportLevelForAnnotation;
    }

    @g
    public final Jsr305Settings getJsr305() {
        return this.jsr305;
    }

    @g
    public String toString() {
        return "JavaTypeEnhancementState(jsr305=" + this.jsr305 + ", getReportLevelForAnnotation=" + this.getReportLevelForAnnotation + ')';
    }
}
