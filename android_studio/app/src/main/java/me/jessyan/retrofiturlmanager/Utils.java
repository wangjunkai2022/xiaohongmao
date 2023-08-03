package me.jessyan.retrofiturlmanager;

import java.util.Objects;
import okhttp3.HttpUrl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class Utils {
    private Utils() {
        throw new IllegalStateException("do not instantiation me");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T t9, String str) {
        Objects.requireNonNull(t9, str);
        return t9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HttpUrl checkUrl(String str) {
        HttpUrl parse = HttpUrl.parse(str);
        if (parse != null) {
            return parse;
        }
        throw new InvalidUrlException(str);
    }
}
