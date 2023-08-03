package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import m8.g;

/* loaded from: classes4.dex */
public class AnnotatedImpl implements Annotated {
    private final Annotations annotations;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = i4 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i4 != 1 ? 3 : 2];
        if (i4 != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (i4 != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (i4 != 1) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        if (i4 == 1) {
            throw new IllegalStateException(format);
        }
    }

    public AnnotatedImpl(@g Annotations annotations) {
        if (annotations == null) {
            $$$reportNull$$$0(0);
        }
        this.annotations = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        Annotations annotations = this.annotations;
        if (annotations == null) {
            $$$reportNull$$$0(1);
        }
        return annotations;
    }
}
