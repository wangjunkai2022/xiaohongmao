package j8;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: CodeGenerationHint.java */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface a {
    String ifNameSuffix() default "";
}
