package com.koushikdutta.async;

/* loaded from: classes3.dex */
public class AsyncSSLException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private boolean f44113a;

    public AsyncSSLException(Throwable th) {
        super("Peer not trusted by any of the system trust managers.", th);
        this.f44113a = false;
    }

    public boolean getIgnore() {
        return this.f44113a;
    }

    public void setIgnore(boolean z9) {
        this.f44113a = z9;
    }
}
