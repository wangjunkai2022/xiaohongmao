package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* compiled from: signatureEnhancement.kt */
/* loaded from: classes4.dex */
final class SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1 extends Lambda implements Function1<CallableMemberDescriptor, KotlinType> {
    final /* synthetic */ ValueParameterDescriptor $p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignatureEnhancement$enhanceSignature$valueParameterEnhancements$1$1(ValueParameterDescriptor valueParameterDescriptor) {
        super(1);
        this.$p = valueParameterDescriptor;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final KotlinType invoke(@g CallableMemberDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        KotlinType type = it.getValueParameters().get(this.$p.getIndex()).getType();
        Intrinsics.checkNotNullExpressionValue(type, "it.valueParameters[p.index].type");
        return type;
    }
}
