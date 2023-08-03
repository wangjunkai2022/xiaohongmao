package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import m8.g;

/* compiled from: DescriptorRendererImpl.kt */
/* loaded from: classes4.dex */
final class DescriptorRendererImpl$renderConstructor$1 extends Lambda implements Function1<ValueParameterDescriptor, CharSequence> {
    public static final DescriptorRendererImpl$renderConstructor$1 INSTANCE = new DescriptorRendererImpl$renderConstructor$1();

    DescriptorRendererImpl$renderConstructor$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final CharSequence invoke(ValueParameterDescriptor valueParameterDescriptor) {
        return "";
    }
}
