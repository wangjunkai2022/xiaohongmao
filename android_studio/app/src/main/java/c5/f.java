package c5;

import android.util.Log;
import java.io.IOException;
import okhttp3.CipherSuite;
import okhttp3.Handshake;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.TlsVersion;

/* compiled from: SSLHandshakeInterceptor.java */
/* loaded from: classes3.dex */
public class f implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4014a = "OkHttp3-SSLHandshake";

    private void a(Response response) {
        Handshake handshake;
        if (response == null || (handshake = response.handshake()) == null) {
            return;
        }
        CipherSuite cipherSuite = handshake.cipherSuite();
        TlsVersion tlsVersion = handshake.tlsVersion();
        Log.v(f4014a, "TLS: " + tlsVersion + ", CipherSuite: " + cipherSuite);
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed = chain.proceed(chain.request());
        a(proceed);
        return proceed;
    }
}
