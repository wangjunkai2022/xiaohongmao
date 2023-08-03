package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaAnnotationOwner.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaAnnotationOwnerKt {
    @h
    public static final ReflectJavaAnnotation findAnnotation(@g Annotation[] annotationArr, @g FqName fqName) {
        Annotation annotation;
        Intrinsics.checkNotNullParameter(annotationArr, "<this>");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        int length = annotationArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                annotation = null;
                break;
            }
            annotation = annotationArr[i4];
            if (Intrinsics.areEqual(ReflectClassUtilKt.getClassId(JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(annotation))).asSingleFqName(), fqName)) {
                break;
            }
            i4++;
        }
        if (annotation != null) {
            return new ReflectJavaAnnotation(annotation);
        }
        return null;
    }

    @g
    public static final List<ReflectJavaAnnotation> getAnnotations(@g Annotation[] annotationArr) {
        Intrinsics.checkNotNullParameter(annotationArr, "<this>");
        ArrayList arrayList = new ArrayList(annotationArr.length);
        for (Annotation annotation : annotationArr) {
            arrayList.add(new ReflectJavaAnnotation(annotation));
        }
        return arrayList;
    }
}
