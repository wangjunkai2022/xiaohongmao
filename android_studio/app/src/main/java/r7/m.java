package r7;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.annotation.meta.When;

/* compiled from: RegEx.java */
@o("RegEx")
@t7.e
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface m {

    /* compiled from: RegEx.java */
    /* loaded from: classes4.dex */
    public static class a implements t7.f<m> {
        @Override // t7.f
        /* renamed from: b */
        public When a(m mVar, Object obj) {
            if (!(obj instanceof String)) {
                return When.NEVER;
            }
            try {
                Pattern.compile((String) obj);
                return When.ALWAYS;
            } catch (PatternSyntaxException unused) {
                return When.NEVER;
            }
        }
    }

    When when() default When.ALWAYS;
}
