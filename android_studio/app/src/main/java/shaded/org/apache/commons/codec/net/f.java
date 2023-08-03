package shaded.org.apache.commons.codec.net;

import shaded.org.apache.commons.codec.DecoderException;

/* compiled from: Utils.java */
/* loaded from: classes5.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private static final int f93744a = 16;

    f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte b10) throws DecoderException {
        int digit = Character.digit((char) b10, 16);
        if (digit != -1) {
            return digit;
        }
        throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + ((int) b10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char b(int i4) {
        return Character.toUpperCase(Character.forDigit(i4 & 15, 16));
    }
}
