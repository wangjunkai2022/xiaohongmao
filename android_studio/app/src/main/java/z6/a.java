package z6;

import dagger.hilt.d;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: AliasOf.java */
@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.CLASS)
@d
/* loaded from: classes3.dex */
public @interface a {
    Class<? extends Annotation>[] value();
}
