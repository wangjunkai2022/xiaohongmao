package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: JavaNullabilityAnnotationsStatus.kt */
/* loaded from: classes4.dex */
public final class JavaNullabilityAnnotationsStatus {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final JavaNullabilityAnnotationsStatus DEFAULT = new JavaNullabilityAnnotationsStatus(ReportLevel.STRICT, null, null, 6, null);
    @g
    private final ReportLevel reportLevelAfter;
    @g
    private final ReportLevel reportLevelBefore;
    @h
    private final KotlinVersion sinceVersion;

    /* compiled from: JavaNullabilityAnnotationsStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final JavaNullabilityAnnotationsStatus getDEFAULT() {
            return JavaNullabilityAnnotationsStatus.DEFAULT;
        }
    }

    public JavaNullabilityAnnotationsStatus(@g ReportLevel reportLevelBefore, @h KotlinVersion kotlinVersion, @g ReportLevel reportLevelAfter) {
        Intrinsics.checkNotNullParameter(reportLevelBefore, "reportLevelBefore");
        Intrinsics.checkNotNullParameter(reportLevelAfter, "reportLevelAfter");
        this.reportLevelBefore = reportLevelBefore;
        this.sinceVersion = kotlinVersion;
        this.reportLevelAfter = reportLevelAfter;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JavaNullabilityAnnotationsStatus) {
            JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = (JavaNullabilityAnnotationsStatus) obj;
            return this.reportLevelBefore == javaNullabilityAnnotationsStatus.reportLevelBefore && Intrinsics.areEqual(this.sinceVersion, javaNullabilityAnnotationsStatus.sinceVersion) && this.reportLevelAfter == javaNullabilityAnnotationsStatus.reportLevelAfter;
        }
        return false;
    }

    @g
    public final ReportLevel getReportLevelAfter() {
        return this.reportLevelAfter;
    }

    @g
    public final ReportLevel getReportLevelBefore() {
        return this.reportLevelBefore;
    }

    @h
    public final KotlinVersion getSinceVersion() {
        return this.sinceVersion;
    }

    public int hashCode() {
        int hashCode = this.reportLevelBefore.hashCode() * 31;
        KotlinVersion kotlinVersion = this.sinceVersion;
        return ((hashCode + (kotlinVersion == null ? 0 : kotlinVersion.hashCode())) * 31) + this.reportLevelAfter.hashCode();
    }

    @g
    public String toString() {
        return "JavaNullabilityAnnotationsStatus(reportLevelBefore=" + this.reportLevelBefore + ", sinceVersion=" + this.sinceVersion + ", reportLevelAfter=" + this.reportLevelAfter + ')';
    }

    public /* synthetic */ JavaNullabilityAnnotationsStatus(ReportLevel reportLevel, KotlinVersion kotlinVersion, ReportLevel reportLevel2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(reportLevel, (i4 & 2) != 0 ? new KotlinVersion(1, 0) : kotlinVersion, (i4 & 4) != 0 ? reportLevel : reportLevel2);
    }
}
