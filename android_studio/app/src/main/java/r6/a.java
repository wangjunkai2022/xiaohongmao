package r6;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: AggregatedRoot.java */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3.dex */
public @interface a {
    String originatingRoot();

    String originatingRootPackage();

    String[] originatingRootSimpleNames();

    String root();

    Class<?> rootAnnotation();

    String rootPackage();

    String[] rootSimpleNames();
}
