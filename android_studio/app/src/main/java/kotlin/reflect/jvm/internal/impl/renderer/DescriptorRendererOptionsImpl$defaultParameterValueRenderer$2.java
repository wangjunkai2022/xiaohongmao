package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import m8.g;

/* compiled from: DescriptorRendererOptionsImpl.kt */
/* loaded from: classes4.dex */
final class DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2 extends Lambda implements Function1<ValueParameterDescriptor, String> {
    public static final DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2 INSTANCE = new DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2();

    DescriptorRendererOptionsImpl$defaultParameterValueRenderer$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final String invoke(@g ValueParameterDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return "...";
    }
}
