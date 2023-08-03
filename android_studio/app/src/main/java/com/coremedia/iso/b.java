package com.coremedia.iso;

import java.io.UnsupportedEncodingException;

/* compiled from: Ascii.java */
/* loaded from: classes.dex */
public final class b {
    public static String a(byte[] bArr) {
        if (bArr != null) {
            try {
                return new String(bArr, "us-ascii");
            } catch (UnsupportedEncodingException e4) {
                throw new Error(e4);
            }
        }
        return null;
    }

    public static byte[] b(String str) {
        if (str != null) {
            try {
                return str.getBytes("us-ascii");
            } catch (UnsupportedEncodingException e4) {
                throw new Error(e4);
            }
        }
        return null;
    }
}
