package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
/* loaded from: classes4.dex */
public final class AbstractBinaryClassAnnotationAndConstantLoader$storage$1 extends Lambda implements Function1<KotlinJvmBinaryClass, AbstractBinaryClassAnnotationAndConstantLoader.AnnotationsContainerWithConstants<? extends A, ? extends C>> {
    final /* synthetic */ AbstractBinaryClassAnnotationAndConstantLoader<A, C> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractBinaryClassAnnotationAndConstantLoader$storage$1(AbstractBinaryClassAnnotationAndConstantLoader<A, C> abstractBinaryClassAnnotationAndConstantLoader) {
        super(1);
        this.this$0 = abstractBinaryClassAnnotationAndConstantLoader;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final AbstractBinaryClassAnnotationAndConstantLoader.AnnotationsContainerWithConstants<A, C> invoke(@g KotlinJvmBinaryClass kotlinClass) {
        AbstractBinaryClassAnnotationAndConstantLoader.AnnotationsContainerWithConstants<A, C> loadAnnotationsAndInitializers;
        Intrinsics.checkNotNullParameter(kotlinClass, "kotlinClass");
        loadAnnotationsAndInitializers = this.this$0.loadAnnotationsAndInitializers(kotlinClass);
        return loadAnnotationsAndInitializers;
    }
}
