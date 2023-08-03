package v3;

import java.nio.ShortBuffer;

/* compiled from: Debug.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f94194a = false;

    public static void a(int i4) {
    }

    public static void b(String str) {
    }

    public static void c(short[] sArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            for (int i11 = 0; i11 < 8; i11++) {
                System.out.printf("%3d, ", Short.valueOf(sArr[i4]));
                i4++;
            }
            System.out.println();
        }
    }

    public static final void d(ShortBuffer shortBuffer) {
        for (int i4 = 0; i4 < 8; i4++) {
            for (int i10 = 0; i10 < 8; i10++) {
                System.out.printf("%3d, ", Short.valueOf(shortBuffer.get()));
            }
            System.out.println();
        }
    }

    public static final void e(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            for (int i11 = 0; i11 < 8; i11++) {
                System.out.printf("%3d, ", Integer.valueOf(iArr[i4]));
                i4++;
            }
            System.out.println();
        }
    }

    public static final void f(short[] sArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            for (int i11 = 0; i11 < 8; i11++) {
                System.out.printf("%3d, ", Short.valueOf(sArr[i4]));
                i4++;
            }
            System.out.println();
        }
    }

    public static void g(String str) {
    }

    public static void h(String str, Object... objArr) {
    }
}
