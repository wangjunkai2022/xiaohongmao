package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: javaElements.kt */
/* loaded from: classes4.dex */
public interface ListBasedJavaAnnotationOwner extends JavaAnnotationOwner {

    /* compiled from: javaElements.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static JavaAnnotation findAnnotation(@g ListBasedJavaAnnotationOwner listBasedJavaAnnotationOwner, @g FqName fqName) {
            Object obj;
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            Iterator<T> it = listBasedJavaAnnotationOwner.getAnnotations().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                ClassId classId = ((JavaAnnotation) next).getClassId();
                if (Intrinsics.areEqual(classId != null ? classId.asSingleFqName() : null, fqName)) {
                    obj = next;
                    break;
                }
            }
            return (JavaAnnotation) obj;
        }
    }
}
