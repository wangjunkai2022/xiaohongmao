package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: DescriptorRenderer.kt */
/* loaded from: classes4.dex */
final class DescriptorRenderer$Companion$COMPACT$1 extends Lambda implements Function1<DescriptorRendererOptions, Unit> {
    public static final DescriptorRenderer$Companion$COMPACT$1 INSTANCE = new DescriptorRenderer$Companion$COMPACT$1();

    DescriptorRenderer$Companion$COMPACT$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DescriptorRendererOptions descriptorRendererOptions) {
        invoke2(descriptorRendererOptions);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g DescriptorRendererOptions withOptions) {
        Set<? extends DescriptorRendererModifier> emptySet;
        Intrinsics.checkNotNullParameter(withOptions, "$this$withOptions");
        withOptions.setWithDefinedIn(false);
        emptySet = SetsKt__SetsKt.emptySet();
        withOptions.setModifiers(emptySet);
    }
}
