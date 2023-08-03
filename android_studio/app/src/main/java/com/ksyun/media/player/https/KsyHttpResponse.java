package com.ksyun.media.player.https;

/* loaded from: classes3.dex */
public class KsyHttpResponse {
    StringBuilder data;
    private int responseCode = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KsyHttpResponse() {
        this.data = null;
        this.data = new StringBuilder();
    }

    public void appendData(String str) {
        this.data.append(str);
    }

    public String getData() {
        return this.data.toString();
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public void restResponse() {
        this.responseCode = 0;
        this.data.setLength(0);
    }

    public void setResponseCode(int i4) {
        this.responseCode = i4;
    }
}
