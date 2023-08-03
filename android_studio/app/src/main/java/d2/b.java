package d2;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: JsonSerializableSchema.java */
@com.fasterxml.jackson.annotation.a
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface b {

    /* renamed from: h1  reason: collision with root package name */
    public static final String f61982h1 = "##irrelevant";

    String id() default "";

    @Deprecated
    String schemaItemDefinition() default "##irrelevant";

    @Deprecated
    String schemaObjectPropertiesDefinition() default "##irrelevant";

    String schemaType() default "any";
}
