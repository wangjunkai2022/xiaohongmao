package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaElement;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaElement;
import m8.g;

/* compiled from: RuntimeSourceElementFactory.kt */
/* loaded from: classes4.dex */
public final class RuntimeSourceElementFactory implements JavaSourceElementFactory {
    @g
    public static final RuntimeSourceElementFactory INSTANCE = new RuntimeSourceElementFactory();

    /* compiled from: RuntimeSourceElementFactory.kt */
    /* loaded from: classes4.dex */
    public static final class RuntimeSourceElement implements JavaSourceElement {
        @g
        private final ReflectJavaElement javaElement;

        public RuntimeSourceElement(@g ReflectJavaElement javaElement) {
            Intrinsics.checkNotNullParameter(javaElement, "javaElement");
            this.javaElement = javaElement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.SourceElement
        @g
        public SourceFile getContainingFile() {
            SourceFile NO_SOURCE_FILE = SourceFile.NO_SOURCE_FILE;
            Intrinsics.checkNotNullExpressionValue(NO_SOURCE_FILE, "NO_SOURCE_FILE");
            return NO_SOURCE_FILE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElement
        @g
        public ReflectJavaElement getJavaElement() {
            return this.javaElement;
        }

        @g
        public String toString() {
            return RuntimeSourceElement.class.getName() + ": " + getJavaElement();
        }
    }

    private RuntimeSourceElementFactory() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory
    @g
    public JavaSourceElement source(@g JavaElement javaElement) {
        Intrinsics.checkNotNullParameter(javaElement, "javaElement");
        return new RuntimeSourceElement((ReflectJavaElement) javaElement);
    }
}
