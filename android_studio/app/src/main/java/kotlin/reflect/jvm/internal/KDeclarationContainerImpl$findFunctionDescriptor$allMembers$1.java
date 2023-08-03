package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KDeclarationContainerImpl.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KDeclarationContainerImpl$findFunctionDescriptor$allMembers$1 extends Lambda implements Function1<FunctionDescriptor, CharSequence> {
    public static final KDeclarationContainerImpl$findFunctionDescriptor$allMembers$1 INSTANCE = new KDeclarationContainerImpl$findFunctionDescriptor$allMembers$1();

    KDeclarationContainerImpl$findFunctionDescriptor$allMembers$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final CharSequence invoke(@g FunctionDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return DescriptorRenderer.DEBUG_TEXT.render(descriptor) + " | " + RuntimeTypeMapper.INSTANCE.mapSignature(descriptor).asString();
    }
}
