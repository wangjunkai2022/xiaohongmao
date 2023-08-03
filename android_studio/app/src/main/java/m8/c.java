package m8;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Contract.java */
@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes5.dex */
public @interface c {
    @f
    String mutates() default "";

    boolean pure() default false;

    @f
    String value() default "";
}
