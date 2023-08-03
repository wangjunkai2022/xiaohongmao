package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Annotations.kt */
/* loaded from: classes4.dex */
public final class AnnotationsKt {
    @g
    public static final Annotations composeAnnotations(@g Annotations first, @g Annotations second) {
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        return first.isEmpty() ? second : second.isEmpty() ? first : new CompositeAnnotations(first, second);
    }
}
