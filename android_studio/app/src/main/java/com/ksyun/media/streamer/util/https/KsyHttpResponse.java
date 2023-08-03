package com.ksyun.media.streamer.util.https;

/* loaded from: classes3.dex */
public class KsyHttpResponse {

    /* renamed from: a  reason: collision with root package name */
    StringBuilder f46912a;

    /* renamed from: b  reason: collision with root package name */
    private int f46913b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KsyHttpResponse() {
        this.f46912a = null;
        this.f46912a = new StringBuilder();
    }

    public void appendData(String str) {
        this.f46912a.append(str);
    }

    public String getData() {
        return this.f46912a.toString();
    }

    public int getResponseCode() {
        return this.f46913b;
    }

    public void restResponse() {
        this.f46913b = 0;
        this.f46912a.setLength(0);
    }

    public void setResponseCode(int i4) {
        this.f46913b = i4;
    }
}
