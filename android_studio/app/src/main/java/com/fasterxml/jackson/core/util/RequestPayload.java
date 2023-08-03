package com.fasterxml.jackson.core.util;

import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes.dex */
public class RequestPayload implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f14251d = 1;

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f14252a;

    /* renamed from: b  reason: collision with root package name */
    protected CharSequence f14253b;

    /* renamed from: c  reason: collision with root package name */
    protected String f14254c;

    public RequestPayload(byte[] bArr, String str) {
        if (bArr != null) {
            this.f14252a = bArr;
            this.f14254c = (str == null || str.isEmpty()) ? "UTF-8" : "UTF-8";
            return;
        }
        throw new IllegalArgumentException();
    }

    public Object getRawPayload() {
        byte[] bArr = this.f14252a;
        return bArr != null ? bArr : this.f14253b;
    }

    public String toString() {
        byte[] bArr = this.f14252a;
        if (bArr != null) {
            try {
                return new String(bArr, this.f14254c);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
        return this.f14253b.toString();
    }

    public RequestPayload(CharSequence charSequence) {
        if (charSequence != null) {
            this.f14253b = charSequence;
            return;
        }
        throw new IllegalArgumentException();
    }
}
