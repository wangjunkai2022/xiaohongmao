package dagger.hilt.android;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

/* compiled from: AndroidEntryPoint.java */
@Target({ElementType.TYPE})
@dagger.hilt.d
/* loaded from: classes3.dex */
public @interface b {
    Class<?> value() default Void.class;
}
