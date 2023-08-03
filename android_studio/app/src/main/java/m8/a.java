package m8;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: ApiStatus.java */
/* loaded from: classes5.dex */
public final class a {

    /* compiled from: ApiStatus.java */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* renamed from: m8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public @interface InterfaceC0773a {
        String value();
    }

    /* compiled from: ApiStatus.java */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface b {
    }

    /* compiled from: ApiStatus.java */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface c {
    }

    /* compiled from: ApiStatus.java */
    @Target({ElementType.TYPE, ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface d {
    }

    /* compiled from: ApiStatus.java */
    @Target({ElementType.TYPE, ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface e {
    }

    /* compiled from: ApiStatus.java */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface f {
        String inVersion() default "";
    }
}
