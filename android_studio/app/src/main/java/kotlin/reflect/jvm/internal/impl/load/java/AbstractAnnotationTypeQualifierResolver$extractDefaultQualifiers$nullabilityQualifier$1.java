package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: AbstractAnnotationTypeQualifierResolver.kt */
/* loaded from: classes4.dex */
final class AbstractAnnotationTypeQualifierResolver$extractDefaultQualifiers$nullabilityQualifier$1 extends Lambda implements Function1<TAnnotation, Boolean> {
    public static final AbstractAnnotationTypeQualifierResolver$extractDefaultQualifiers$nullabilityQualifier$1 INSTANCE = new AbstractAnnotationTypeQualifierResolver$extractDefaultQualifiers$nullabilityQualifier$1();

    AbstractAnnotationTypeQualifierResolver$extractDefaultQualifiers$nullabilityQualifier$1() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g TAnnotation extractNullability) {
        Intrinsics.checkNotNullParameter(extractNullability, "$this$extractNullability");
        return Boolean.FALSE;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return invoke((AbstractAnnotationTypeQualifierResolver$extractDefaultQualifiers$nullabilityQualifier$1) obj);
    }
}
