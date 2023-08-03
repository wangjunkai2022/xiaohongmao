package com.koushikdutta.async.http;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class BasicNameValuePair implements NameValuePair, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private final String f44627a;

    /* renamed from: b  reason: collision with root package name */
    private final String f44628b;

    public BasicNameValuePair(String str, String str2) {
        if (str != null) {
            this.f44627a = str;
            this.f44628b = str2;
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof NameValuePair) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) obj;
            return this.f44627a.equals(basicNameValuePair.f44627a) && TextUtils.equals(this.f44628b, basicNameValuePair.f44628b);
        }
        return false;
    }

    @Override // com.koushikdutta.async.http.NameValuePair
    public String getName() {
        return this.f44627a;
    }

    @Override // com.koushikdutta.async.http.NameValuePair
    public String getValue() {
        return this.f44628b;
    }

    public int hashCode() {
        return this.f44627a.hashCode() ^ this.f44628b.hashCode();
    }

    public String toString() {
        return this.f44627a + "=" + this.f44628b;
    }
}
