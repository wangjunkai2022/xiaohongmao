package r7;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.When;

/* compiled from: Nonnull.java */
@t7.c
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface g {

    /* compiled from: Nonnull.java */
    /* loaded from: classes4.dex */
    public static class a implements t7.f<g> {
        @Override // t7.f
        /* renamed from: b */
        public When a(g gVar, Object obj) {
            if (obj == null) {
                return When.NEVER;
            }
            return When.ALWAYS;
        }
    }

    When when() default When.ALWAYS;
}
