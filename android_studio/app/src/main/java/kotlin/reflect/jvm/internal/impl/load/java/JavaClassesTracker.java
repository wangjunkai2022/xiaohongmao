package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor;
import m8.g;

/* compiled from: JavaClassesTracker.kt */
/* loaded from: classes4.dex */
public interface JavaClassesTracker {

    /* compiled from: JavaClassesTracker.kt */
    /* loaded from: classes4.dex */
    public static final class Default implements JavaClassesTracker {
        @g
        public static final Default INSTANCE = new Default();

        private Default() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassesTracker
        public void reportClass(@g JavaClassDescriptor classDescriptor) {
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
        }
    }

    void reportClass(@g JavaClassDescriptor javaClassDescriptor);
}
