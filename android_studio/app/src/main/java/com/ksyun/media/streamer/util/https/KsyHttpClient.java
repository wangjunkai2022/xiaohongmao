package com.ksyun.media.streamer.util.https;

/* loaded from: classes3.dex */
public class KsyHttpClient implements HttpResponseListener {
    private KsyHttpConnection mConnection;
    private long mHandler;
    HttpResponseListener mListener;

    public KsyHttpClient() {
        this.mConnection = null;
        KsyHttpConnection ksyHttpConnection = new KsyHttpConnection();
        this.mConnection = ksyHttpConnection;
        ksyHttpConnection.setListener(this);
    }

    private native void _NativeResponse(long j4, int i4, String str);

    public void cancelHttpRequest() {
        KsyHttpConnection ksyHttpConnection = this.mConnection;
        if (ksyHttpConnection != null) {
            ksyHttpConnection.cancelHttpRequest();
        }
    }

    @Override // com.ksyun.media.streamer.util.https.HttpResponseListener
    public void onHttpResponse(KsyHttpResponse ksyHttpResponse) {
        HttpResponseListener httpResponseListener = this.mListener;
        if (httpResponseListener != null) {
            httpResponseListener.onHttpResponse(ksyHttpResponse);
        }
    }

    public void performHttpRequest(String str) {
        KsyHttpConnection ksyHttpConnection = this.mConnection;
        if (ksyHttpConnection != null) {
            ksyHttpConnection.performHttpRequest(str);
        }
    }

    public void performHttpsRequest(String str) {
        KsyHttpConnection ksyHttpConnection = this.mConnection;
        if (ksyHttpConnection != null) {
            ksyHttpConnection.performHttpsRequest(str);
        }
    }

    public void setConnectTimetout(int i4) {
        this.mConnection.setConnectTimeout(i4);
    }

    public void setHandler(long j4) {
        this.mHandler = j4;
    }

    public void setListener(HttpResponseListener httpResponseListener) {
        this.mListener = httpResponseListener;
    }

    public void setRequestProperty(String str, String str2) {
        KsyHttpConnection ksyHttpConnection = this.mConnection;
        if (ksyHttpConnection != null) {
            ksyHttpConnection.setRequestProperty(str, str2);
        }
    }

    public void setTimeout(int i4) {
        this.mConnection.setTimeout(i4);
    }
}
