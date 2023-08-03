package kotlin.reflect.jvm.internal.impl.load.java.components;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaElement;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMember;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface JavaResolverCache {
    public static final JavaResolverCache EMPTY = new JavaResolverCache() { // from class: kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache.1
        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            Object[] objArr = new Object[3];
            switch (i4) {
                case 1:
                    objArr[0] = "member";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                    objArr[0] = "descriptor";
                    break;
                case 3:
                    objArr[0] = "element";
                    break;
                case 5:
                    objArr[0] = "field";
                    break;
                case 7:
                    objArr[0] = "javaClass";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1";
            switch (i4) {
                case 1:
                case 2:
                    objArr[2] = "recordMethod";
                    break;
                case 3:
                case 4:
                    objArr[2] = "recordConstructor";
                    break;
                case 5:
                case 6:
                    objArr[2] = "recordField";
                    break;
                case 7:
                case 8:
                    objArr[2] = "recordClass";
                    break;
                default:
                    objArr[2] = "getClassResolvedFromSource";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        @h
        public ClassDescriptor getClassResolvedFromSource(@g FqName fqName) {
            if (fqName == null) {
                $$$reportNull$$$0(0);
                return null;
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public void recordClass(@g JavaClass javaClass, @g ClassDescriptor classDescriptor) {
            if (javaClass == null) {
                $$$reportNull$$$0(7);
            }
            if (classDescriptor == null) {
                $$$reportNull$$$0(8);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public void recordConstructor(@g JavaElement javaElement, @g ConstructorDescriptor constructorDescriptor) {
            if (javaElement == null) {
                $$$reportNull$$$0(3);
            }
            if (constructorDescriptor == null) {
                $$$reportNull$$$0(4);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public void recordField(@g JavaField javaField, @g PropertyDescriptor propertyDescriptor) {
            if (javaField == null) {
                $$$reportNull$$$0(5);
            }
            if (propertyDescriptor == null) {
                $$$reportNull$$$0(6);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache
        public void recordMethod(@g JavaMember javaMember, @g SimpleFunctionDescriptor simpleFunctionDescriptor) {
            if (javaMember == null) {
                $$$reportNull$$$0(1);
            }
            if (simpleFunctionDescriptor == null) {
                $$$reportNull$$$0(2);
            }
        }
    };

    @h
    ClassDescriptor getClassResolvedFromSource(@g FqName fqName);

    void recordClass(@g JavaClass javaClass, @g ClassDescriptor classDescriptor);

    void recordConstructor(@g JavaElement javaElement, @g ConstructorDescriptor constructorDescriptor);

    void recordField(@g JavaField javaField, @g PropertyDescriptor propertyDescriptor);

    void recordMethod(@g JavaMember javaMember, @g SimpleFunctionDescriptor simpleFunctionDescriptor);
}
