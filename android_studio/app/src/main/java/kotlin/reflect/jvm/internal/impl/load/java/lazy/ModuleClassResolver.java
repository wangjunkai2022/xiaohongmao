package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import m8.g;
import m8.h;

/* compiled from: ModuleClassResolver.kt */
/* loaded from: classes4.dex */
public interface ModuleClassResolver {
    @h
    ClassDescriptor resolveClass(@g JavaClass javaClass);
}
