package com.ksyun.media.player.https;

/* loaded from: classes3.dex */
public class KsyHttpClient implements HttpResponseListener {

    /* renamed from: a  reason: collision with root package name */
    private a f45531a;

    /* renamed from: b  reason: collision with root package name */
    private long f45532b;

    KsyHttpClient() {
        this.f45531a = null;
        a aVar = new a();
        this.f45531a = aVar;
        aVar.a(this);
    }

    private native void _NativeResponse(long j4, int i4, String str);

    public void cancelHttpRequest() {
        a aVar = this.f45531a;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.ksyun.media.player.https.HttpResponseListener
    public void onHttpResponse(KsyHttpResponse ksyHttpResponse) {
        _NativeResponse(this.f45532b, ksyHttpResponse.getResponseCode(), ksyHttpResponse.getData());
    }

    public void performHttpRequest(String str) {
        a aVar = this.f45531a;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void performHttpsRequest(String str) {
        a aVar = this.f45531a;
        if (aVar != null) {
            aVar.b(str);
        }
    }

    public void setConnectTimetout(int i4) {
        this.f45531a.b(i4);
    }

    public void setHandler(long j4) {
        this.f45532b = j4;
    }

    public void setRequestProperty(String str, String str2) {
        a aVar = this.f45531a;
        if (aVar != null) {
            aVar.a(str, str2);
        }
    }

    public void setTimeout(int i4) {
        this.f45531a.a(i4);
    }
}
