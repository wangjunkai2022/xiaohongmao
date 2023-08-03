package shaded.org.apache.commons.codec.digest;

import java.util.Random;

/* compiled from: B64.java */
/* loaded from: classes5.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    static final String f93500a = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte b10, byte b11, byte b12, int i4, StringBuilder sb) {
        int i10 = ((b10 << 16) & 16777215) | ((b11 << 8) & 65535) | (b12 & 255);
        while (true) {
            int i11 = i4 - 1;
            if (i4 <= 0) {
                return;
            }
            sb.append(f93500a.charAt(i10 & 63));
            i10 >>= 6;
            i4 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(int i4) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 1; i10 <= i4; i10++) {
            sb.append(f93500a.charAt(new Random().nextInt(64)));
        }
        return sb.toString();
    }
}
