package org.json.alipay;

/* loaded from: classes5.dex */
public class JSONException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private Throwable f91707a;

    public JSONException(String str) {
        super(str);
    }

    public JSONException(Throwable th) {
        super(th.getMessage());
        this.f91707a = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f91707a;
    }
}
