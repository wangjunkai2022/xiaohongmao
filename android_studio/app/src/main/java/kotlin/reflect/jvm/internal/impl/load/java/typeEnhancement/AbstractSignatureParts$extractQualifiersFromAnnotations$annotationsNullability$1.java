package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: AbstractSignatureParts.kt */
/* loaded from: classes4.dex */
final class AbstractSignatureParts$extractQualifiersFromAnnotations$annotationsNullability$1 extends Lambda implements Function1<TAnnotation, Boolean> {
    final /* synthetic */ AbstractSignatureParts<TAnnotation> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractSignatureParts$extractQualifiersFromAnnotations$annotationsNullability$1(AbstractSignatureParts<TAnnotation> abstractSignatureParts) {
        super(1);
        this.this$0 = abstractSignatureParts;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g TAnnotation extractNullability) {
        Intrinsics.checkNotNullParameter(extractNullability, "$this$extractNullability");
        return Boolean.valueOf(this.this$0.getForceWarning(extractNullability));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return invoke((AbstractSignatureParts$extractQualifiersFromAnnotations$annotationsNullability$1) obj);
    }
}
