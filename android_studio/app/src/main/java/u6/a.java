package u6;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: ComponentTreeDeps.java */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3.dex */
public @interface a {
    Class<?>[] aggregatedDeps() default {};

    Class<?>[] aliasOfDeps() default {};

    Class<?>[] defineComponentDeps() default {};

    Class<?>[] earlyEntryPointDeps() default {};

    Class<?>[] rootDeps() default {};

    Class<?>[] uninstallModulesDeps() default {};
}
