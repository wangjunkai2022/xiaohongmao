package com.koushikdutta.async;

import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;

/* loaded from: classes3.dex */
public interface AsyncSSLSocket extends AsyncSocket {
    SSLEngine l();

    X509Certificate[] m();
}
