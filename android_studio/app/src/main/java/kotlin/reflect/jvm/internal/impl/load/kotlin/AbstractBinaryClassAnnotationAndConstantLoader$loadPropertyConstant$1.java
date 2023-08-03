package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader;
import m8.g;
import m8.h;

/* compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
/* loaded from: classes4.dex */
final class AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1 extends Lambda implements Function2<AbstractBinaryClassAnnotationAndConstantLoader.AnnotationsContainerWithConstants<? extends A, ? extends C>, MemberSignature, C> {
    public static final AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1 INSTANCE = new AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1();

    AbstractBinaryClassAnnotationAndConstantLoader$loadPropertyConstant$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, MemberSignature memberSignature) {
        return invoke((AbstractBinaryClassAnnotationAndConstantLoader.AnnotationsContainerWithConstants<? extends A, ? extends Object>) obj, memberSignature);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [C, java.lang.Object] */
    @h
    public final C invoke(@g AbstractBinaryClassAnnotationAndConstantLoader.AnnotationsContainerWithConstants<? extends A, ? extends C> loadConstantFromProperty, @g MemberSignature it) {
        Intrinsics.checkNotNullParameter(loadConstantFromProperty, "$this$loadConstantFromProperty");
        Intrinsics.checkNotNullParameter(it, "it");
        return loadConstantFromProperty.getPropertyConstants().get(it);
    }
}
