package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DescriptorUtils.kt */
/* loaded from: classes4.dex */
public final class DescriptorUtilsKt$parentsWithSelf$1 extends Lambda implements Function1<DeclarationDescriptor, DeclarationDescriptor> {
    public static final DescriptorUtilsKt$parentsWithSelf$1 INSTANCE = new DescriptorUtilsKt$parentsWithSelf$1();

    DescriptorUtilsKt$parentsWithSelf$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final DeclarationDescriptor invoke(@g DeclarationDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getContainingDeclaration();
    }
}
