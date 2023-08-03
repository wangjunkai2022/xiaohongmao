package m8;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Range.java */
@Target({ElementType.TYPE_USE})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes5.dex */
public @interface j {
    long from();

    long to();
}
