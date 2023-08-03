package d7;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: ClassKey.java */
@Target({ElementType.METHOD, ElementType.FIELD, ElementType.TYPE})
@d6.f
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes3.dex */
public @interface a {
    Class<?> value();
}
