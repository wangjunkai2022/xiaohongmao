package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import m8.g;

/* compiled from: LazyJavaClassDescriptor.kt */
/* loaded from: classes4.dex */
final class LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$parameters$1 extends Lambda implements Function0<List<? extends TypeParameterDescriptor>> {
    final /* synthetic */ LazyJavaClassDescriptor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$parameters$1(LazyJavaClassDescriptor lazyJavaClassDescriptor) {
        super(0);
        this.this$0 = lazyJavaClassDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends TypeParameterDescriptor> invoke() {
        return TypeParameterUtilsKt.computeConstructorTypeParameters(this.this$0);
    }
}
