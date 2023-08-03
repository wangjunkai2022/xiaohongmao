package okhttp3;

import io.sentry.protocol.w;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import okio.ByteString;

/* compiled from: Credentials.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lokhttp3/Credentials;", "", "()V", "basic", "", w.b.f83891c, "password", "charset", "Ljava/nio/charset/Charset;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final String basic(@g String str, @g String str2) {
        return basic$default(str, str2, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final String basic(@g String username, @g String password, @g Charset charset) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(charset, "charset");
        String base64 = ByteString.Companion.encodeString(username + ':' + password, charset).base64();
        return "Basic " + base64;
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset ISO_8859_1, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            ISO_8859_1 = StandardCharsets.ISO_8859_1;
            Intrinsics.checkNotNullExpressionValue(ISO_8859_1, "ISO_8859_1");
        }
        return basic(str, str2, ISO_8859_1);
    }
}
