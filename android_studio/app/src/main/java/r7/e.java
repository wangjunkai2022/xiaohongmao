package r7;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;
import javax.annotation.meta.When;

/* compiled from: MatchesPattern.java */
@t7.c(applicableTo = String.class)
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface e {

    /* compiled from: MatchesPattern.java */
    /* loaded from: classes4.dex */
    public static class a implements t7.f<e> {
        @Override // t7.f
        /* renamed from: b */
        public When a(e eVar, Object obj) {
            if (Pattern.compile(eVar.value(), eVar.flags()).matcher((String) obj).matches()) {
                return When.ALWAYS;
            }
            return When.NEVER;
        }
    }

    int flags() default 0;

    @m
    String value();
}
