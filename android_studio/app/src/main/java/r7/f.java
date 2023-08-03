package r7;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.When;

/* compiled from: Nonnegative.java */
@t7.c(applicableTo = Number.class)
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface f {

    /* compiled from: Nonnegative.java */
    /* loaded from: classes4.dex */
    public static class a implements t7.f<f> {
        @Override // t7.f
        /* renamed from: b */
        public When a(f fVar, Object obj) {
            if (!(obj instanceof Number)) {
                return When.NEVER;
            }
            Number number = (Number) obj;
            boolean z9 = true;
            if (!(number instanceof Long) ? !(number instanceof Double) ? !(number instanceof Float) ? number.intValue() >= 0 : number.floatValue() >= 0.0f : number.doubleValue() >= 0.0d : number.longValue() >= 0) {
                z9 = false;
            }
            if (z9) {
                return When.NEVER;
            }
            return When.ALWAYS;
        }
    }

    When when() default When.ALWAYS;
}
