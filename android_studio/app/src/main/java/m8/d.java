package m8;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.intellij.lang.annotations.Language;

/* compiled from: Debug.java */
/* loaded from: classes5.dex */
public final class d {

    /* compiled from: Debug.java */
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface a {
        @Language(prefix = "class Renderer{Object[] $childrenArray(){return ", suffix = ";}}", value = "JAVA")
        @f
        String childrenArray() default "";

        @Language(prefix = "class Renderer{boolean $hasChildren(){return ", suffix = ";}}", value = "JAVA")
        @f
        String hasChildren() default "";

        @Language(prefix = "class Renderer{String $text(){return ", suffix = ";}}", value = "JAVA")
        @f
        String text() default "";
    }
}
