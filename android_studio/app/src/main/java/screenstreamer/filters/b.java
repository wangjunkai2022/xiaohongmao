package screenstreamer.filters;

import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* compiled from: GPUImageTransformFilter.java */
/* loaded from: classes5.dex */
public class b extends a {

    /* renamed from: s  reason: collision with root package name */
    public static final String f93363s = "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }";

    /* renamed from: m  reason: collision with root package name */
    private int f93364m;

    /* renamed from: n  reason: collision with root package name */
    private int f93365n;

    /* renamed from: o  reason: collision with root package name */
    private float[] f93366o;

    /* renamed from: p  reason: collision with root package name */
    private float[] f93367p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f93368q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f93369r;

    public b() {
        super(f93363s, a.f93325l);
        float[] fArr = new float[16];
        this.f93366o = fArr;
        Matrix.orthoM(fArr, 0, -1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f);
        float[] fArr2 = new float[16];
        this.f93367p = fArr2;
        Matrix.setIdentityM(fArr2, 0);
    }

    public boolean C() {
        return this.f93369r;
    }

    public float[] D() {
        return this.f93367p;
    }

    public boolean E() {
        return this.f93368q;
    }

    public void F(boolean z9) {
        this.f93369r = z9;
        G(this.f93368q);
    }

    public void G(boolean z9) {
        this.f93368q = z9;
        if (z9) {
            Matrix.orthoM(this.f93366o, 0, -1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f);
            B(this.f93365n, this.f93366o);
            return;
        }
        q(f(), e());
    }

    public void H(int i4) {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        float[] fArr2 = {0.0f, 1.0f, 0.0f};
        Matrix.rotateM(fArr, 0, i4, fArr2[0], fArr2[1], fArr2[2]);
        J(fArr);
    }

    public void I(int i4) {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        float[] fArr2 = {0.0f, 0.0f, 1.0f};
        Matrix.rotateM(fArr, 0, i4, fArr2[0], fArr2[1], fArr2[2]);
        J(fArr);
    }

    public void J(float[] fArr) {
        this.f93367p = fArr;
        B(this.f93364m, fArr);
    }

    @Override // screenstreamer.filters.a
    public void m(int i4, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (!this.f93368q) {
            floatBuffer.position(0);
            floatBuffer.get(r0);
            float e4 = e() / f();
            float[] fArr = {0.0f, fArr[1] * e4, 0.0f, fArr[3] * e4, 0.0f, fArr[5] * e4, 0.0f, fArr[7] * e4};
            floatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
            floatBuffer.put(fArr).position(0);
        }
        super.m(i4, floatBuffer, floatBuffer2);
    }

    @Override // screenstreamer.filters.a
    public void o() {
        super.o();
        this.f93364m = GLES20.glGetUniformLocation(g(), "transformMatrix");
        this.f93365n = GLES20.glGetUniformLocation(g(), "orthographicMatrix");
        B(this.f93364m, this.f93367p);
        B(this.f93365n, this.f93366o);
    }

    @Override // screenstreamer.filters.a
    public void p() {
        super.p();
    }

    @Override // screenstreamer.filters.a
    public void q(int i4, int i10) {
        super.q(i4, i10);
        if (this.f93368q) {
            return;
        }
        float f10 = i10;
        float f11 = i4;
        Matrix.orthoM(this.f93366o, 0, -1.0f, 1.0f, ((-1.0f) * f10) / f11, (f10 * 1.0f) / f11, -1.0f, 1.0f);
        B(this.f93365n, this.f93366o);
    }
}
