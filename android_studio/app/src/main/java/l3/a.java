package l3;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Encodable.java */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2.dex */
public @interface a {

    /* compiled from: Encodable.java */
    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: l3.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public @interface InterfaceC0771a {
        boolean inline() default false;

        String name() default "";
    }

    /* compiled from: Encodable.java */
    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2.dex */
    public @interface b {
    }
}
