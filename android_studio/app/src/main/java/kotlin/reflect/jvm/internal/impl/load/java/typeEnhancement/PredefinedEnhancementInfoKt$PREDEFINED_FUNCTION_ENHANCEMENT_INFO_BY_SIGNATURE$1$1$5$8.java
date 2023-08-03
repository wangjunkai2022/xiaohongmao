package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancementBuilder;
import m8.g;

/* compiled from: predefinedEnhancementInfo.kt */
/* loaded from: classes4.dex */
final class PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$8 extends Lambda implements Function1<SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder, Unit> {
    final /* synthetic */ String $JFBiFunction;
    final /* synthetic */ String $JLObject;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$8(String str, String str2) {
        super(1);
        this.$JLObject = str;
        this.$JFBiFunction = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder) {
        invoke2(functionEnhancementBuilder);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder function) {
        JavaTypeQualifiers javaTypeQualifiers;
        JavaTypeQualifiers javaTypeQualifiers2;
        JavaTypeQualifiers javaTypeQualifiers3;
        JavaTypeQualifiers javaTypeQualifiers4;
        JavaTypeQualifiers javaTypeQualifiers5;
        JavaTypeQualifiers javaTypeQualifiers6;
        Intrinsics.checkNotNullParameter(function, "$this$function");
        String str = this.$JLObject;
        javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
        function.parameter(str, javaTypeQualifiers);
        String str2 = this.$JFBiFunction;
        javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
        javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
        javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
        javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
        function.parameter(str2, javaTypeQualifiers2, javaTypeQualifiers3, javaTypeQualifiers4, javaTypeQualifiers5);
        String str3 = this.$JLObject;
        javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NULLABLE;
        function.returns(str3, javaTypeQualifiers6);
    }
}
