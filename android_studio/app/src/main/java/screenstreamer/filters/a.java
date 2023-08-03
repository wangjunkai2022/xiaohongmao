package screenstreamer.filters;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.GLES20;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.LinkedList;
import java.util.Scanner;

/* compiled from: GPUImageFilter.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: k  reason: collision with root package name */
    public static final String f93324k = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}";

    /* renamed from: l  reason: collision with root package name */
    public static final String f93325l = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}";

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<Runnable> f93326a;

    /* renamed from: b  reason: collision with root package name */
    private final String f93327b;

    /* renamed from: c  reason: collision with root package name */
    private final String f93328c;

    /* renamed from: d  reason: collision with root package name */
    protected int f93329d;

    /* renamed from: e  reason: collision with root package name */
    protected int f93330e;

    /* renamed from: f  reason: collision with root package name */
    protected int f93331f;

    /* renamed from: g  reason: collision with root package name */
    protected int f93332g;

    /* renamed from: h  reason: collision with root package name */
    protected int f93333h;

    /* renamed from: i  reason: collision with root package name */
    protected int f93334i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f93335j;

    /* compiled from: GPUImageFilter.java */
    /* renamed from: screenstreamer.filters.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0837a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93336a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f93337b;

        RunnableC0837a(int i4, int i10) {
            this.f93336a = i4;
            this.f93337b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniform1i(this.f93336a, this.f93337b);
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93339a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f93340b;

        b(int i4, float f10) {
            this.f93339a = i4;
            this.f93340b = f10;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniform1f(this.f93339a, this.f93340b);
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93342a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float[] f93343b;

        c(int i4, float[] fArr) {
            this.f93342a = i4;
            this.f93343b = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniform2fv(this.f93342a, 1, FloatBuffer.wrap(this.f93343b));
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93345a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float[] f93346b;

        d(int i4, float[] fArr) {
            this.f93345a = i4;
            this.f93346b = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniform3fv(this.f93345a, 1, FloatBuffer.wrap(this.f93346b));
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93348a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float[] f93349b;

        e(int i4, float[] fArr) {
            this.f93348a = i4;
            this.f93349b = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniform4fv(this.f93348a, 1, FloatBuffer.wrap(this.f93349b));
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93351a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float[] f93352b;

        f(int i4, float[] fArr) {
            this.f93351a = i4;
            this.f93352b = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i4 = this.f93351a;
            float[] fArr = this.f93352b;
            GLES20.glUniform1fv(i4, fArr.length, FloatBuffer.wrap(fArr));
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PointF f93354a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f93355b;

        g(PointF pointF, int i4) {
            this.f93354a = pointF;
            this.f93355b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            PointF pointF = this.f93354a;
            GLES20.glUniform2fv(this.f93355b, 1, new float[]{pointF.x, pointF.y}, 0);
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93357a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float[] f93358b;

        h(int i4, float[] fArr) {
            this.f93357a = i4;
            this.f93358b = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniformMatrix3fv(this.f93357a, 1, false, this.f93358b, 0);
        }
    }

    /* compiled from: GPUImageFilter.java */
    /* loaded from: classes5.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f93360a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float[] f93361b;

        i(int i4, float[] fArr) {
            this.f93360a = i4;
            this.f93361b = fArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            GLES20.glUniformMatrix4fv(this.f93360a, 1, false, this.f93361b, 0);
        }
    }

    public a() {
        this(f93324k, f93325l);
    }

    public static String a(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    public static String k(String str, Context context) {
        try {
            InputStream open = context.getAssets().open(str);
            String a10 = a(open);
            open.close();
            return a10;
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    protected void A(int i4, float[] fArr) {
        r(new h(i4, fArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B(int i4, float[] fArr) {
        r(new i(i4, fArr));
    }

    public final void b() {
        this.f93335j = false;
        GLES20.glDeleteProgram(this.f93329d);
        l();
    }

    public int c() {
        return this.f93330e;
    }

    public int d() {
        return this.f93332g;
    }

    public int e() {
        return this.f93334i;
    }

    public int f() {
        return this.f93333h;
    }

    public int g() {
        return this.f93329d;
    }

    public int h() {
        return this.f93331f;
    }

    public final void i() {
        o();
        this.f93335j = true;
        p();
    }

    public boolean j() {
        return this.f93335j;
    }

    public void l() {
    }

    public void m(int i4, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        GLES20.glUseProgram(this.f93329d);
        s();
        if (this.f93335j) {
            floatBuffer.position(0);
            GLES20.glVertexAttribPointer(this.f93330e, 2, 5126, false, 0, (Buffer) floatBuffer);
            GLES20.glEnableVertexAttribArray(this.f93330e);
            floatBuffer2.position(0);
            GLES20.glVertexAttribPointer(this.f93332g, 2, 5126, false, 0, (Buffer) floatBuffer2);
            GLES20.glEnableVertexAttribArray(this.f93332g);
            if (i4 != -1) {
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, i4);
                GLES20.glUniform1i(this.f93331f, 0);
            }
            n();
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisableVertexAttribArray(this.f93330e);
            GLES20.glDisableVertexAttribArray(this.f93332g);
            GLES20.glBindTexture(3553, 0);
        }
    }

    protected void n() {
    }

    public void o() {
        int a10 = screenstreamer.filters.f.a(this.f93327b, this.f93328c);
        this.f93329d = a10;
        this.f93330e = GLES20.glGetAttribLocation(a10, "position");
        this.f93331f = GLES20.glGetUniformLocation(this.f93329d, "inputImageTexture");
        this.f93332g = GLES20.glGetAttribLocation(this.f93329d, "inputTextureCoordinate");
        this.f93335j = true;
    }

    public void p() {
    }

    public void q(int i4, int i10) {
        this.f93333h = i4;
        this.f93334i = i10;
    }

    protected void r(Runnable runnable) {
        synchronized (this.f93326a) {
            this.f93326a.addLast(runnable);
        }
    }

    protected void s() {
        while (!this.f93326a.isEmpty()) {
            this.f93326a.removeFirst().run();
        }
    }

    protected void t(int i4, float f10) {
        r(new b(i4, f10));
    }

    protected void u(int i4, float[] fArr) {
        r(new f(i4, fArr));
    }

    protected void v(int i4, float[] fArr) {
        r(new c(i4, fArr));
    }

    protected void w(int i4, float[] fArr) {
        r(new d(i4, fArr));
    }

    protected void x(int i4, float[] fArr) {
        r(new e(i4, fArr));
    }

    protected void y(int i4, int i10) {
        r(new RunnableC0837a(i4, i10));
    }

    protected void z(int i4, PointF pointF) {
        r(new g(pointF, i4));
    }

    public a(String str, String str2) {
        this.f93326a = new LinkedList<>();
        this.f93327b = str;
        this.f93328c = str2;
    }
}
