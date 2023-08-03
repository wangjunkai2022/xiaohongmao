package com.qennnsad.aknkaksd.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PasswordUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u001a\u0010\t\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/y0;", "", "", "password", "", "b", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "TAG", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class y0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final y0 f55128a = new y0();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f55129b = "PasswordUtil";

    private y0() {
    }

    @JvmStatic
    public static final boolean b(@m8.g String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        if (password.length() < 6) {
            return false;
        }
        Pattern compile = Pattern.compile("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{6,}$");
        Intrinsics.checkNotNullExpressionValue(compile, "compile(PASSWORD_PATTERN)");
        Matcher matcher = compile.matcher(password);
        Intrinsics.checkNotNullExpressionValue(matcher, "pattern.matcher(password)");
        boolean matches = matcher.matches();
        String str = f55129b;
        o0.a(str, "Is Password valid:" + matches);
        return matches;
    }

    @m8.g
    public final String a() {
        return f55129b;
    }
}
