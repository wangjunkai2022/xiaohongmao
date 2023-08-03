package c2;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: JsonAppend.java */
@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface b {

    /* compiled from: JsonAppend.java */
    /* loaded from: classes.dex */
    public @interface a {
        JsonInclude.Include include() default JsonInclude.Include.NON_NULL;

        String propName() default "";

        String propNamespace() default "";

        boolean required() default false;

        String value();
    }

    /* compiled from: JsonAppend.java */
    /* renamed from: c2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public @interface InterfaceC0028b {
        JsonInclude.Include include() default JsonInclude.Include.NON_NULL;

        String name() default "";

        String namespace() default "";

        boolean required() default false;

        Class<?> type() default Object.class;

        Class<? extends VirtualBeanPropertyWriter> value();
    }

    a[] attrs() default {};

    boolean prepend() default false;

    InterfaceC0028b[] props() default {};
}
