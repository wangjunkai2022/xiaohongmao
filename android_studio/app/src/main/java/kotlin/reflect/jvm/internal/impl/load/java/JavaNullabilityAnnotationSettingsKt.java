package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.KotlinVersion;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.JavaNullabilityAnnotationsStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: JavaNullabilityAnnotationSettings.kt */
/* loaded from: classes4.dex */
public final class JavaNullabilityAnnotationSettingsKt {
    @g
    private static final FqName CHECKER_FRAMEWORK_COMPATQUAL_ANNOTATIONS_PACKAGE;
    @g
    private static final FqName JSPECIFY_ANNOTATIONS_PACKAGE;
    @g
    private static final JavaNullabilityAnnotationsStatus JSR_305_DEFAULT_SETTINGS;
    @g
    private static final NullabilityAnnotationStates<JavaNullabilityAnnotationsStatus> NULLABILITY_ANNOTATION_SETTINGS;

    static {
        Map mapOf;
        FqName fqName = new FqName("org.jspecify.nullness");
        JSPECIFY_ANNOTATIONS_PACKAGE = fqName;
        FqName fqName2 = new FqName("org.checkerframework.checker.nullness.compatqual");
        CHECKER_FRAMEWORK_COMPATQUAL_ANNOTATIONS_PACKAGE = fqName2;
        FqName fqName3 = new FqName("org.jetbrains.annotations");
        JavaNullabilityAnnotationsStatus.Companion companion = JavaNullabilityAnnotationsStatus.Companion;
        FqName fqName4 = new FqName("androidx.annotation.RecentlyNullable");
        ReportLevel reportLevel = ReportLevel.WARN;
        KotlinVersion kotlinVersion = new KotlinVersion(1, 8);
        ReportLevel reportLevel2 = ReportLevel.STRICT;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(fqName3, companion.getDEFAULT()), TuplesKt.to(new FqName("androidx.annotation"), companion.getDEFAULT()), TuplesKt.to(new FqName("android.support.annotation"), companion.getDEFAULT()), TuplesKt.to(new FqName("android.annotation"), companion.getDEFAULT()), TuplesKt.to(new FqName("com.android.annotations"), companion.getDEFAULT()), TuplesKt.to(new FqName("org.eclipse.jdt.annotation"), companion.getDEFAULT()), TuplesKt.to(new FqName("org.checkerframework.checker.nullness.qual"), companion.getDEFAULT()), TuplesKt.to(fqName2, companion.getDEFAULT()), TuplesKt.to(new FqName("javax.annotation"), companion.getDEFAULT()), TuplesKt.to(new FqName("edu.umd.cs.findbugs.annotations"), companion.getDEFAULT()), TuplesKt.to(new FqName("io.reactivex.annotations"), companion.getDEFAULT()), TuplesKt.to(fqName4, new JavaNullabilityAnnotationsStatus(reportLevel, null, null, 4, null)), TuplesKt.to(new FqName("androidx.annotation.RecentlyNonNull"), new JavaNullabilityAnnotationsStatus(reportLevel, null, null, 4, null)), TuplesKt.to(new FqName("lombok"), companion.getDEFAULT()), TuplesKt.to(fqName, new JavaNullabilityAnnotationsStatus(reportLevel, kotlinVersion, reportLevel2)), TuplesKt.to(new FqName("io.reactivex.rxjava3.annotations"), new JavaNullabilityAnnotationsStatus(reportLevel, new KotlinVersion(1, 8), reportLevel2)));
        NULLABILITY_ANNOTATION_SETTINGS = new NullabilityAnnotationStatesImpl(mapOf);
        JSR_305_DEFAULT_SETTINGS = new JavaNullabilityAnnotationsStatus(reportLevel, null, null, 4, null);
    }

    @g
    public static final Jsr305Settings getDefaultJsr305Settings(@g KotlinVersion configuredKotlinVersion) {
        ReportLevel reportLevelBefore;
        Intrinsics.checkNotNullParameter(configuredKotlinVersion, "configuredKotlinVersion");
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = JSR_305_DEFAULT_SETTINGS;
        if (javaNullabilityAnnotationsStatus.getSinceVersion() != null && javaNullabilityAnnotationsStatus.getSinceVersion().compareTo(configuredKotlinVersion) <= 0) {
            reportLevelBefore = javaNullabilityAnnotationsStatus.getReportLevelAfter();
        } else {
            reportLevelBefore = javaNullabilityAnnotationsStatus.getReportLevelBefore();
        }
        ReportLevel reportLevel = reportLevelBefore;
        return new Jsr305Settings(reportLevel, getDefaultMigrationJsr305ReportLevelForGivenGlobal(reportLevel), null, 4, null);
    }

    public static /* synthetic */ Jsr305Settings getDefaultJsr305Settings$default(KotlinVersion kotlinVersion, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            kotlinVersion = KotlinVersion.CURRENT;
        }
        return getDefaultJsr305Settings(kotlinVersion);
    }

    @h
    public static final ReportLevel getDefaultMigrationJsr305ReportLevelForGivenGlobal(@g ReportLevel globalReportLevel) {
        Intrinsics.checkNotNullParameter(globalReportLevel, "globalReportLevel");
        if (globalReportLevel == ReportLevel.WARN) {
            return null;
        }
        return globalReportLevel;
    }

    @g
    public static final ReportLevel getDefaultReportLevelForAnnotation(@g FqName annotationFqName) {
        Intrinsics.checkNotNullParameter(annotationFqName, "annotationFqName");
        return getReportLevelForAnnotation$default(annotationFqName, NullabilityAnnotationStates.Companion.getEMPTY(), null, 4, null);
    }

    @g
    public static final FqName getJSPECIFY_ANNOTATIONS_PACKAGE() {
        return JSPECIFY_ANNOTATIONS_PACKAGE;
    }

    @g
    public static final ReportLevel getReportLevelForAnnotation(@g FqName annotation, @g NullabilityAnnotationStates<? extends ReportLevel> configuredReportLevels, @g KotlinVersion configuredKotlinVersion) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(configuredReportLevels, "configuredReportLevels");
        Intrinsics.checkNotNullParameter(configuredKotlinVersion, "configuredKotlinVersion");
        ReportLevel reportLevel = configuredReportLevels.get(annotation);
        if (reportLevel != null) {
            return reportLevel;
        }
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = NULLABILITY_ANNOTATION_SETTINGS.get(annotation);
        if (javaNullabilityAnnotationsStatus == null) {
            return ReportLevel.IGNORE;
        }
        if (javaNullabilityAnnotationsStatus.getSinceVersion() != null && javaNullabilityAnnotationsStatus.getSinceVersion().compareTo(configuredKotlinVersion) <= 0) {
            return javaNullabilityAnnotationsStatus.getReportLevelAfter();
        }
        return javaNullabilityAnnotationsStatus.getReportLevelBefore();
    }

    public static /* synthetic */ ReportLevel getReportLevelForAnnotation$default(FqName fqName, NullabilityAnnotationStates nullabilityAnnotationStates, KotlinVersion kotlinVersion, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            kotlinVersion = new KotlinVersion(1, 7, 0);
        }
        return getReportLevelForAnnotation(fqName, nullabilityAnnotationStates, kotlinVersion);
    }
}
