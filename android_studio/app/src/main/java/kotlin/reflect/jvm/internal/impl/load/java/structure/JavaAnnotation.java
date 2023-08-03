package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface JavaAnnotation extends JavaElement {

    /* compiled from: javaElements.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static boolean isFreshlySupportedTypeUseAnnotation(@g JavaAnnotation javaAnnotation) {
            return false;
        }

        public static boolean isIdeExternalAnnotation(@g JavaAnnotation javaAnnotation) {
            return false;
        }
    }

    @g
    Collection<JavaAnnotationArgument> getArguments();

    @h
    ClassId getClassId();

    boolean isFreshlySupportedTypeUseAnnotation();

    boolean isIdeExternalAnnotation();

    @h
    JavaClass resolve();
}
