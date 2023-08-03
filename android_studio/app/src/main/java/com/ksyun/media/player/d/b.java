package com.ksyun.media.player.d;

import android.os.Handler;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* compiled from: KSYDnsInfo.java */
/* loaded from: classes3.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Handler f45420a;

    /* compiled from: KSYDnsInfo.java */
    /* loaded from: classes3.dex */
    private class a implements X509TrustManager {
        private a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            try {
                x509CertificateArr[0].checkValidity();
            } catch (Exception unused) {
                throw new CertificateException("Certificate not valid or trusted.");
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public b(Handler handler) {
        this.f45420a = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            final URL url = new URL(d.ah);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new a()}, null);
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
            HostnameVerifier hostnameVerifier = new HostnameVerifier() { // from class: com.ksyun.media.player.d.b.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    if (url.getHost().equals(str)) {
                        return true;
                    }
                    return HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSession);
                }
            };
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
            httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            httpsURLConnection.setConnectTimeout(5000);
            if (httpsURLConnection.getResponseCode() == 200) {
                InputStreamReader inputStreamReader = new InputStreamReader(httpsURLConnection.getInputStream());
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                StringBuffer stringBuffer = new StringBuffer("");
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuffer.append(readLine);
                }
                inputStreamReader.close();
                bufferedReader.close();
                this.f45420a.obtainMessage(501, 7, 0, stringBuffer.toString()).sendToTarget();
            } else {
                this.f45420a.obtainMessage(501, 7).sendToTarget();
            }
            httpsURLConnection.disconnect();
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (ArrayIndexOutOfBoundsException e10) {
            e10.printStackTrace();
        } catch (NullPointerException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }
}
