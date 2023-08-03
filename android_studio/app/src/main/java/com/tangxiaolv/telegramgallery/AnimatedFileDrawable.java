package com.tangxiaolv.telegramgallery;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.io.File;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public class AnimatedFileDrawable extends BitmapDrawable implements Animatable {
    private static final Handler G;
    private static ScheduledThreadPoolExecutor H;

    /* renamed from: a  reason: collision with root package name */
    private long f56073a;

    /* renamed from: b  reason: collision with root package name */
    private int f56074b;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f56076d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f56077e;

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f56078f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f56079g;

    /* renamed from: h  reason: collision with root package name */
    private Bitmap f56080h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f56081i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f56082j;

    /* renamed from: k  reason: collision with root package name */
    private File f56083k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f56084l;

    /* renamed from: m  reason: collision with root package name */
    private BitmapShader f56085m;

    /* renamed from: n  reason: collision with root package name */
    private BitmapShader f56086n;

    /* renamed from: o  reason: collision with root package name */
    private BitmapShader f56087o;

    /* renamed from: p  reason: collision with root package name */
    private int f56088p;

    /* renamed from: v  reason: collision with root package name */
    private boolean f56094v;

    /* renamed from: x  reason: collision with root package name */
    private volatile boolean f56096x;

    /* renamed from: y  reason: collision with root package name */
    private volatile boolean f56097y;

    /* renamed from: z  reason: collision with root package name */
    private volatile int f56098z;

    /* renamed from: c  reason: collision with root package name */
    private int f56075c = 50;

    /* renamed from: q  reason: collision with root package name */
    private RectF f56089q = new RectF();

    /* renamed from: r  reason: collision with root package name */
    private RectF f56090r = new RectF();

    /* renamed from: s  reason: collision with root package name */
    private Matrix f56091s = new Matrix();

    /* renamed from: t  reason: collision with root package name */
    private float f56092t = 1.0f;

    /* renamed from: u  reason: collision with root package name */
    private float f56093u = 1.0f;

    /* renamed from: w  reason: collision with root package name */
    private final Rect f56095w = new Rect();
    private View A = null;
    private View B = null;
    protected final Runnable C = new a();
    private Runnable D = new b();
    private Runnable E = new c();
    private final Runnable F = new d();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AnimatedFileDrawable.this.B != null) {
                AnimatedFileDrawable.this.B.invalidate();
            } else if (AnimatedFileDrawable.this.A != null) {
                AnimatedFileDrawable.this.A.invalidate();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AnimatedFileDrawable.this.f56081i && AnimatedFileDrawable.this.f56098z != 0) {
                AnimatedFileDrawable.destroyDecoder(AnimatedFileDrawable.this.f56098z);
                AnimatedFileDrawable.this.f56098z = 0;
            }
            if (AnimatedFileDrawable.this.f56098z == 0) {
                if (AnimatedFileDrawable.this.f56080h != null) {
                    AnimatedFileDrawable.this.f56080h.recycle();
                    AnimatedFileDrawable.this.f56080h = null;
                    return;
                }
                return;
            }
            AnimatedFileDrawable.this.f56077e = null;
            AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
            animatedFileDrawable.f56079g = animatedFileDrawable.f56080h;
            AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
            animatedFileDrawable2.f56086n = animatedFileDrawable2.f56087o;
            if (AnimatedFileDrawable.this.f56076d[2] < AnimatedFileDrawable.this.f56074b) {
                AnimatedFileDrawable.this.f56074b = 0;
            }
            if (AnimatedFileDrawable.this.f56076d[2] - AnimatedFileDrawable.this.f56074b != 0) {
                AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
                animatedFileDrawable3.f56075c = animatedFileDrawable3.f56076d[2] - AnimatedFileDrawable.this.f56074b;
            }
            AnimatedFileDrawable animatedFileDrawable4 = AnimatedFileDrawable.this;
            animatedFileDrawable4.f56074b = animatedFileDrawable4.f56076d[2];
            if (AnimatedFileDrawable.this.B != null) {
                AnimatedFileDrawable.this.B.invalidate();
            } else if (AnimatedFileDrawable.this.A != null) {
                AnimatedFileDrawable.this.A.invalidate();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AnimatedFileDrawable.this.f56097y) {
                if (!AnimatedFileDrawable.this.f56082j && AnimatedFileDrawable.this.f56098z == 0) {
                    AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
                    animatedFileDrawable.f56098z = AnimatedFileDrawable.createDecoder(animatedFileDrawable.f56083k.getAbsolutePath(), AnimatedFileDrawable.this.f56076d);
                    AnimatedFileDrawable.this.f56082j = true;
                }
                try {
                    if (AnimatedFileDrawable.this.f56080h == null) {
                        AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
                        animatedFileDrawable2.f56080h = Bitmap.createBitmap(animatedFileDrawable2.f56076d[0], AnimatedFileDrawable.this.f56076d[1], Bitmap.Config.ARGB_8888);
                        if (AnimatedFileDrawable.this.f56087o == null && AnimatedFileDrawable.this.f56080h != null && AnimatedFileDrawable.this.f56088p != 0) {
                            AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
                            Bitmap bitmap = AnimatedFileDrawable.this.f56080h;
                            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                            animatedFileDrawable3.f56087o = new BitmapShader(bitmap, tileMode, tileMode);
                        }
                    }
                    if (AnimatedFileDrawable.this.f56080h != null) {
                        AnimatedFileDrawable.getVideoFrame(AnimatedFileDrawable.this.f56098z, AnimatedFileDrawable.this.f56080h, AnimatedFileDrawable.this.f56076d);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            com.tangxiaolv.telegramgallery.Utils.a.D(AnimatedFileDrawable.this.D);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AnimatedFileDrawable.this.B != null) {
                AnimatedFileDrawable.this.B.invalidate();
            } else if (AnimatedFileDrawable.this.A != null) {
                AnimatedFileDrawable.this.A.invalidate();
            }
        }
    }

    static {
        System.loadLibrary("gly");
        G = new Handler(Looper.getMainLooper());
        H = new ScheduledThreadPoolExecutor(2, new ThreadPoolExecutor.DiscardPolicy());
    }

    public AnimatedFileDrawable(File file, boolean z9) {
        int[] iArr = new int[3];
        this.f56076d = iArr;
        this.f56083k = file;
        if (z9) {
            this.f56098z = createDecoder(file.getAbsolutePath(), iArr);
            this.f56082j = true;
        }
    }

    protected static void E(Runnable runnable) {
        Looper myLooper = Looper.myLooper();
        Handler handler = G;
        if (myLooper == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    private void F() {
        if (this.f56077e == null) {
            if ((this.f56098z == 0 && this.f56082j) || this.f56081i) {
                return;
            }
            Runnable runnable = this.E;
            this.f56077e = runnable;
            C(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native int createDecoder(String str, int[] iArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void destroyDecoder(int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int getVideoFrame(int i4, Bitmap bitmap, int[] iArr);

    public boolean A() {
        return (this.f56098z == 0 || (this.f56078f == null && this.f56079g == null)) ? false : true;
    }

    public AnimatedFileDrawable B() {
        AnimatedFileDrawable animatedFileDrawable = new AnimatedFileDrawable(this.f56083k, false);
        int[] iArr = animatedFileDrawable.f56076d;
        int[] iArr2 = this.f56076d;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        return animatedFileDrawable;
    }

    protected void C(Runnable runnable) {
        H.execute(runnable);
    }

    public void D() {
        if (this.B != null) {
            this.f56084l = true;
            return;
        }
        this.f56096x = false;
        this.f56097y = true;
        if (this.f56077e == null) {
            if (this.f56098z != 0) {
                destroyDecoder(this.f56098z);
                this.f56098z = 0;
            }
            Bitmap bitmap = this.f56079g;
            if (bitmap != null) {
                bitmap.recycle();
                this.f56079g = null;
            }
        } else {
            this.f56081i = true;
        }
        Bitmap bitmap2 = this.f56078f;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f56078f = null;
        }
    }

    public void G(View view) {
        this.A = view;
    }

    public void H(int i4) {
        this.f56088p = i4;
        getPaint().setFlags(1);
    }

    public void I(View view) {
        this.B = view;
        if (view == null && this.f56084l) {
            D();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if ((this.f56098z == 0 && this.f56082j) || this.f56081i) {
            return;
        }
        if (this.f56096x) {
            if (this.f56078f == null && this.f56079g == null) {
                F();
            } else if (Math.abs(System.currentTimeMillis() - this.f56073a) >= this.f56075c && this.f56079g != null) {
                F();
                this.f56078f = this.f56079g;
                this.f56085m = this.f56086n;
                this.f56079g = null;
                this.f56086n = null;
                this.f56073a = System.currentTimeMillis();
            }
        }
        if (this.f56078f != null) {
            if (this.f56094v) {
                this.f56095w.set(getBounds());
                this.f56092t = this.f56095w.width() / this.f56078f.getWidth();
                this.f56093u = this.f56095w.height() / this.f56078f.getHeight();
                this.f56094v = false;
            }
            if (this.f56088p != 0) {
                int width = this.f56078f.getWidth();
                int height = this.f56078f.getHeight();
                float max = Math.max(this.f56092t, this.f56093u);
                if (this.f56085m == null) {
                    Bitmap bitmap = this.f56080h;
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    this.f56085m = new BitmapShader(bitmap, tileMode, tileMode);
                }
                getPaint().setShader(this.f56085m);
                this.f56089q.set(this.f56095w);
                this.f56091s.reset();
                if (Math.abs(this.f56092t - this.f56093u) > 1.0E-5f) {
                    int floor = (int) Math.floor(this.f56095w.width() / max);
                    int floor2 = (int) Math.floor(this.f56095w.height() / max);
                    this.f56090r.set((width - floor) / 2, (height - floor2) / 2, floor, floor2);
                    this.f56091s.setRectToRect(this.f56090r, this.f56089q, Matrix.ScaleToFit.START);
                } else {
                    this.f56090r.set(0.0f, 0.0f, this.f56078f.getWidth(), this.f56078f.getHeight());
                    this.f56091s.setRectToRect(this.f56090r, this.f56089q, Matrix.ScaleToFit.FILL);
                }
                this.f56085m.setLocalMatrix(this.f56091s);
                RectF rectF = this.f56089q;
                int i4 = this.f56088p;
                canvas.drawRoundRect(rectF, i4, i4, getPaint());
            } else {
                Rect rect = this.f56095w;
                canvas.translate(rect.left, rect.top);
                canvas.scale(this.f56092t, this.f56093u);
                canvas.drawBitmap(this.f56078f, 0.0f, 0.0f, getPaint());
            }
            if (this.f56096x) {
                G.postDelayed(this.C, this.f56075c);
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            D();
        } finally {
            super.finalize();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f56082j ? this.f56076d[1] : com.tangxiaolv.telegramgallery.Utils.a.g(100.0f);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f56082j ? this.f56076d[0] : com.tangxiaolv.telegramgallery.Utils.a.g(100.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f56082j ? this.f56076d[1] : com.tangxiaolv.telegramgallery.Utils.a.g(100.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f56082j ? this.f56076d[0] : com.tangxiaolv.telegramgallery.Utils.a.g(100.0f);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f56096x;
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f56094v = true;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f56096x) {
            return;
        }
        this.f56096x = true;
        if (this.f56078f == null) {
            F();
        }
        E(this.F);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f56096x = false;
    }

    public Bitmap z() {
        Bitmap bitmap = this.f56078f;
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmap2 = this.f56079g;
        if (bitmap2 != null) {
            return bitmap2;
        }
        return null;
    }
}
