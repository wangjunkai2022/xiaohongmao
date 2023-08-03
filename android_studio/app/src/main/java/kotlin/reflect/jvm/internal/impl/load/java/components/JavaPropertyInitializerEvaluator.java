package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import m8.g;
import m8.h;

/* compiled from: JavaPropertyInitializerEvaluator.kt */
/* loaded from: classes4.dex */
public interface JavaPropertyInitializerEvaluator {

    /* compiled from: JavaPropertyInitializerEvaluator.kt */
    /* loaded from: classes4.dex */
    public static final class DoNothing implements JavaPropertyInitializerEvaluator {
        @g
        public static final DoNothing INSTANCE = new DoNothing();

        private DoNothing() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaPropertyInitializerEvaluator
        @h
        public ConstantValue<?> getInitializerConstant(@g JavaField field, @g PropertyDescriptor descriptor) {
            Intrinsics.checkNotNullParameter(field, "field");
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            return null;
        }
    }

    @h
    ConstantValue<?> getInitializerConstant(@g JavaField javaField, @g PropertyDescriptor propertyDescriptor);
}
