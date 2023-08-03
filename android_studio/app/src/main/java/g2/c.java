package g2;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import m8.g;

/* compiled from: HashUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002¨\u0006\u000b"}, d2 = {"Lg2/c;", "", "", "type", "input", "a", "d", "c", "b", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final c f67799a = new c();

    private c() {
    }

    private final String a(String str, String str2) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Charset charset = Charsets.UTF_8;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str2.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] bytes2 = messageDigest.digest(bytes);
        StringBuilder sb = new StringBuilder(bytes2.length * 2);
        Intrinsics.checkNotNullExpressionValue(bytes2, "bytes");
        for (byte b10 : bytes2) {
            sb.append("0123456789ABCDEF".charAt((b10 >> 4) & 15));
            sb.append("0123456789ABCDEF".charAt(b10 & com.google.common.base.c.f32110q));
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "result.toString()");
        return sb2;
    }

    @g
    public final String b(@g String input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return a("SHA-1", input);
    }

    @g
    public final String c(@g String input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return a("SHA-256", input);
    }

    @g
    public final String d(@g String input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return a("SHA-512", input);
    }
}
