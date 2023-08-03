package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: JavaTypeEnhancementState.kt */
/* loaded from: classes4.dex */
/* synthetic */ class JavaTypeEnhancementState$Companion$DEFAULT$1 extends FunctionReference implements Function1<FqName, ReportLevel> {
    public static final JavaTypeEnhancementState$Companion$DEFAULT$1 INSTANCE = new JavaTypeEnhancementState$Companion$DEFAULT$1();

    JavaTypeEnhancementState$Companion$DEFAULT$1() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @g
    public final String getName() {
        return "getDefaultReportLevelForAnnotation";
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinPackage(JavaNullabilityAnnotationSettingsKt.class, "compiler.common.jvm");
    }

    @Override // kotlin.jvm.internal.CallableReference
    @g
    public final String getSignature() {
        return "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;";
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final ReportLevel invoke(@g FqName p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        return JavaNullabilityAnnotationSettingsKt.getDefaultReportLevelForAnnotation(p02);
    }
}
