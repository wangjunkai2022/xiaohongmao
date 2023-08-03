package c2;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: JsonPOJOBuilder.java */
@com.fasterxml.jackson.annotation.a
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface e {
    public static final String G = "build";
    public static final String H = "with";

    /* compiled from: JsonPOJOBuilder.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f4000a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4001b;

        public a(e eVar) {
            this(eVar.buildMethodName(), eVar.withPrefix());
        }

        public a(String str, String str2) {
            this.f4000a = str;
            this.f4001b = str2;
        }
    }

    String buildMethodName() default "build";

    String withPrefix() default "with";
}
