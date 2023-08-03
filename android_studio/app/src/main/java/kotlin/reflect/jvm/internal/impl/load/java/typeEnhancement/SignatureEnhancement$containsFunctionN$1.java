package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: signatureEnhancement.kt */
/* loaded from: classes4.dex */
public final class SignatureEnhancement$containsFunctionN$1 extends Lambda implements Function1<UnwrappedType, Boolean> {
    public static final SignatureEnhancement$containsFunctionN$1 INSTANCE = new SignatureEnhancement$containsFunctionN$1();

    SignatureEnhancement$containsFunctionN$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(UnwrappedType unwrappedType) {
        ClassifierDescriptor declarationDescriptor = unwrappedType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return Boolean.FALSE;
        }
        Name name = declarationDescriptor.getName();
        JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.INSTANCE;
        return Boolean.valueOf(Intrinsics.areEqual(name, javaToKotlinClassMap.getFUNCTION_N_FQ_NAME().shortName()) && Intrinsics.areEqual(DescriptorUtilsKt.fqNameOrNull(declarationDescriptor), javaToKotlinClassMap.getFUNCTION_N_FQ_NAME()));
    }
}
