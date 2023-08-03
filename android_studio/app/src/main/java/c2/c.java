package c2;

import com.fasterxml.jackson.databind.d;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.util.h;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: JsonDeserialize.java */
@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface c {
    Class<?> as() default Void.class;

    Class<?> builder() default Void.class;

    Class<?> contentAs() default Void.class;

    Class<? extends com.fasterxml.jackson.databind.util.h> contentConverter() default h.a.class;

    Class<? extends com.fasterxml.jackson.databind.d> contentUsing() default d.a.class;

    Class<? extends com.fasterxml.jackson.databind.util.h> converter() default h.a.class;

    Class<?> keyAs() default Void.class;

    Class<? extends com.fasterxml.jackson.databind.h> keyUsing() default h.a.class;

    Class<? extends com.fasterxml.jackson.databind.d> using() default d.a.class;
}
