package iamutkarshtiwari.github.io.ananas.editimage.utils;

import java.io.PrintStream;

/* compiled from: Matrix3.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private float[] f69700a;

    public f() {
        this.f69700a = new float[9];
    }

    public f a() {
        return new f(b());
    }

    public float[] b() {
        float[] fArr = new float[9];
        System.arraycopy(this.f69700a, 0, fArr, 0, 9);
        return fArr;
    }

    public f c() {
        float[] b10 = a().b();
        float f10 = b10[0];
        float f11 = b10[4];
        b10[0] = 1.0f / f10;
        b10[1] = 0.0f;
        float[] fArr = this.f69700a;
        b10[2] = (fArr[2] / f10) * (-1.0f);
        b10[3] = 0.0f;
        b10[4] = 1.0f / f11;
        b10[5] = (fArr[5] / f11) * (-1.0f);
        b10[6] = 0.0f;
        b10[7] = 0.0f;
        b10[8] = 1.0f;
        return new f(b10);
    }

    public void d(f fVar) {
        float[] b10 = a().b();
        float[] b11 = fVar.a().b();
        float[] fArr = this.f69700a;
        fArr[0] = (b10[0] * b11[0]) + (b10[1] * b11[3]) + (b10[2] * b11[6]);
        fArr[1] = (b10[0] * b11[1]) + (b10[1] * b11[4]) + (b10[2] * b11[7]);
        fArr[2] = (b10[0] * b11[2]) + (b10[1] * b11[5]) + (b10[2] * b11[8]);
        fArr[3] = (b10[3] * b11[0]) + (b10[4] * b11[3]) + (b10[5] * b11[6]);
        fArr[4] = (b10[3] * b11[1]) + (b10[4] * b11[4]) + (b10[5] * b11[7]);
        fArr[5] = (b10[3] * b11[2]) + (b10[4] * b11[5]) + (b10[5] * b11[8]);
        fArr[6] = (b10[6] * b11[0]) + (b10[7] * b11[3]) + (b10[8] * b11[6]);
        fArr[7] = (b10[6] * b11[1]) + (b10[7] * b11[4]) + (b10[8] * b11[7]);
        fArr[8] = (b10[6] * b11[2]) + (b10[7] * b11[5]) + (b10[8] * b11[8]);
    }

    public void e() {
        PrintStream printStream = System.out;
        printStream.println("data--->" + this.f69700a[0] + "  " + this.f69700a[1] + "  " + this.f69700a[2]);
        PrintStream printStream2 = System.out;
        printStream2.println("              " + this.f69700a[3] + "  " + this.f69700a[4] + "  " + this.f69700a[5]);
        PrintStream printStream3 = System.out;
        printStream3.println("              " + this.f69700a[6] + "  " + this.f69700a[7] + "  " + this.f69700a[8]);
    }

    public void f(float[] fArr) {
        int length = fArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            this.f69700a[i4] = fArr[i4];
        }
    }

    public f(float[] fArr) {
        this();
        f(fArr);
    }
}
