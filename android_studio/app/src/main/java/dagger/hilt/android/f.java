package dagger.hilt.android;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: HiltAndroidApp.java */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@dagger.hilt.d
/* loaded from: classes3.dex */
public @interface f {
    Class<?> value() default Void.class;
}
