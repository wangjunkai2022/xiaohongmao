package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import m8.g;

/* compiled from: JavaDescriptorUtil.kt */
/* loaded from: classes4.dex */
public final class JavaDescriptorUtilKt {
    public static final boolean isJavaField(@g PropertyDescriptor propertyDescriptor) {
        Intrinsics.checkNotNullParameter(propertyDescriptor, "<this>");
        return propertyDescriptor.getGetter() == null;
    }
}
