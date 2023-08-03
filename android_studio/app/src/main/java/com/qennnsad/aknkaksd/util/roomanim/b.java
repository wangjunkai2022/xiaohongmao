package com.qennnsad.aknkaksd.util.roomanim;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity;

/* compiled from: GenView.java */
/* loaded from: classes3.dex */
public class b extends SurfaceView implements SurfaceHolder.Callback {

    /* renamed from: a  reason: collision with root package name */
    private SurfaceHolder f55001a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f55002b;

    /* renamed from: c  reason: collision with root package name */
    private Context f55003c;

    /* renamed from: d  reason: collision with root package name */
    private a f55004d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f55005e;

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f55006f;

    /* renamed from: g  reason: collision with root package name */
    private Resources f55007g;

    /* renamed from: h  reason: collision with root package name */
    private float f55008h;

    /* renamed from: i  reason: collision with root package name */
    private float f55009i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55010j;

    /* renamed from: k  reason: collision with root package name */
    private c f55011k;

    /* renamed from: l  reason: collision with root package name */
    private float f55012l;

    /* renamed from: m  reason: collision with root package name */
    private float f55013m;

    /* renamed from: n  reason: collision with root package name */
    private float f55014n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f55015o;

    /* compiled from: GenView.java */
    /* loaded from: classes3.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        SurfaceHolder f55016a;

        /* renamed from: b  reason: collision with root package name */
        Paint f55017b = new Paint();

        /* compiled from: GenView.java */
        /* renamed from: com.qennnsad.aknkaksd.util.roomanim.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0464a implements Runnable {
            RunnableC0464a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.setVisibility(8);
                if (b.this.f55011k != null) {
                    b.this.f55011k.a();
                }
            }
        }

        public a(SurfaceHolder surfaceHolder) {
            this.f55016a = surfaceHolder;
        }

        private Bitmap a(Bitmap bitmap) {
            Matrix matrix = new Matrix();
            matrix.postScale(((bitmap.getWidth() * b.this.f55009i) / bitmap.getHeight()) / bitmap.getWidth(), b.this.f55009i / bitmap.getHeight());
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (b.this.f55012l == 0.0f) {
                b bVar = b.this;
                bVar.f55012l = (bVar.f55008h - createBitmap.getWidth()) / 2.0f;
            }
            bitmap.recycle();
            return createBitmap;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
            r10.f55016a.unlockCanvasAndPost(r5);
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0087 -> B:21:0x0088). Please submit an issue!!! */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r10 = this;
                com.qennnsad.aknkaksd.util.roomanim.b r0 = com.qennnsad.aknkaksd.util.roomanim.b.this
                r1 = 1
                com.qennnsad.aknkaksd.util.roomanim.b.a(r0, r1)
                com.qennnsad.aknkaksd.util.roomanim.b r0 = com.qennnsad.aknkaksd.util.roomanim.b.this
                r2 = 0
                com.qennnsad.aknkaksd.util.roomanim.b.c(r0, r2)
                com.qennnsad.aknkaksd.util.roomanim.b r0 = com.qennnsad.aknkaksd.util.roomanim.b.this
                android.content.Context r3 = com.qennnsad.aknkaksd.util.roomanim.b.f(r0)
                android.content.res.Resources r3 = r3.getResources()
                com.qennnsad.aknkaksd.util.roomanim.b.e(r0, r3)
                r0 = 0
                r3 = 0
            L1b:
                com.qennnsad.aknkaksd.util.roomanim.b r4 = com.qennnsad.aknkaksd.util.roomanim.b.this
                int[] r4 = com.qennnsad.aknkaksd.util.roomanim.b.g(r4)
                int r4 = r4.length
                if (r3 >= r4) goto La1
                com.qennnsad.aknkaksd.util.roomanim.b r4 = com.qennnsad.aknkaksd.util.roomanim.b.this
                boolean r4 = com.qennnsad.aknkaksd.util.roomanim.b.h(r4)
                if (r4 == 0) goto L2d
                return
            L2d:
                android.view.SurfaceHolder r4 = r10.f55016a     // Catch: java.lang.Throwable -> L8a java.lang.InterruptedException -> L8c
                monitor-enter(r4)     // Catch: java.lang.Throwable -> L8a java.lang.InterruptedException -> L8c
                com.qennnsad.aknkaksd.util.roomanim.b r5 = com.qennnsad.aknkaksd.util.roomanim.b.this     // Catch: java.lang.Throwable -> L87
                android.content.res.Resources r6 = com.qennnsad.aknkaksd.util.roomanim.b.d(r5)     // Catch: java.lang.Throwable -> L87
                com.qennnsad.aknkaksd.util.roomanim.b r7 = com.qennnsad.aknkaksd.util.roomanim.b.this     // Catch: java.lang.Throwable -> L87
                int[] r7 = com.qennnsad.aknkaksd.util.roomanim.b.g(r7)     // Catch: java.lang.Throwable -> L87
                r7 = r7[r3]     // Catch: java.lang.Throwable -> L87
                android.graphics.Bitmap r6 = android.graphics.BitmapFactory.decodeResource(r6, r7)     // Catch: java.lang.Throwable -> L87
                com.qennnsad.aknkaksd.util.roomanim.b.c(r5, r6)     // Catch: java.lang.Throwable -> L87
                android.view.SurfaceHolder r5 = r10.f55016a     // Catch: java.lang.Throwable -> L87
                android.graphics.Canvas r5 = r5.lockCanvas()     // Catch: java.lang.Throwable -> L87
                android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.CLEAR     // Catch: java.lang.Throwable -> L84
                r5.drawColor(r0, r6)     // Catch: java.lang.Throwable -> L84
                com.qennnsad.aknkaksd.util.roomanim.b r6 = com.qennnsad.aknkaksd.util.roomanim.b.this     // Catch: java.lang.Throwable -> L84
                android.graphics.Bitmap r6 = com.qennnsad.aknkaksd.util.roomanim.b.b(r6)     // Catch: java.lang.Throwable -> L84
                android.graphics.Bitmap r6 = r10.a(r6)     // Catch: java.lang.Throwable -> L84
                com.qennnsad.aknkaksd.util.roomanim.b r7 = com.qennnsad.aknkaksd.util.roomanim.b.this     // Catch: java.lang.Throwable -> L84
                float r7 = com.qennnsad.aknkaksd.util.roomanim.b.i(r7)     // Catch: java.lang.Throwable -> L84
                r8 = 0
                android.graphics.Paint r9 = r10.f55017b     // Catch: java.lang.Throwable -> L84
                r5.drawBitmap(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L84
                com.qennnsad.aknkaksd.util.roomanim.b r6 = com.qennnsad.aknkaksd.util.roomanim.b.this     // Catch: java.lang.Throwable -> L84
                int[] r6 = com.qennnsad.aknkaksd.util.roomanim.b.g(r6)     // Catch: java.lang.Throwable -> L84
                int r6 = r6.length     // Catch: java.lang.Throwable -> L84
                int r6 = r6 - r1
                if (r3 != r6) goto L76
                r6 = 2000(0x7d0, double:9.88E-321)
                java.lang.Thread.sleep(r6)     // Catch: java.lang.Throwable -> L84
                goto L7b
            L76:
                r6 = 60
                java.lang.Thread.sleep(r6)     // Catch: java.lang.Throwable -> L84
            L7b:
                int r3 = r3 + 1
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L84
                android.view.SurfaceHolder r4 = r10.f55016a
                r4.unlockCanvasAndPost(r5)
                goto L1b
            L84:
                r1 = move-exception
                r2 = r5
                goto L88
            L87:
                r1 = move-exception
            L88:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L87
                throw r1     // Catch: java.lang.Throwable -> L8a java.lang.InterruptedException -> L8c
            L8a:
                r1 = move-exception
                goto L98
            L8c:
                r1 = move-exception
                r1.printStackTrace()     // Catch: java.lang.Throwable -> L8a
                if (r2 == 0) goto La1
                android.view.SurfaceHolder r1 = r10.f55016a
                r1.unlockCanvasAndPost(r2)
                goto La1
            L98:
                if (r2 != 0) goto L9b
                goto La1
            L9b:
                android.view.SurfaceHolder r0 = r10.f55016a
                r0.unlockCanvasAndPost(r2)
                throw r1
            La1:
                com.qennnsad.aknkaksd.util.roomanim.b r1 = com.qennnsad.aknkaksd.util.roomanim.b.this
                com.qennnsad.aknkaksd.util.roomanim.b.a(r1, r0)
                com.qennnsad.aknkaksd.util.roomanim.b r0 = com.qennnsad.aknkaksd.util.roomanim.b.this
                com.qennnsad.aknkaksd.util.roomanim.b$a$a r1 = new com.qennnsad.aknkaksd.util.roomanim.b$a$a
                r1.<init>()
                r0.post(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.roomanim.b.a.run():void");
        }
    }

    public b(Context context) {
        super(context);
        this.f55005e = null;
        this.f55006f = null;
        this.f55015o = false;
        this.f55003c = context;
        n();
    }

    public void n() {
        setZOrderOnTop(true);
        getHolder().setFormat(-3);
        this.f55002b = new int[]{R.drawable.meteor_01, R.drawable.meteor_02, R.drawable.meteor_03, R.drawable.meteor_04, R.drawable.meteor_05, R.drawable.meteor_06, R.drawable.meteor_07, R.drawable.meteor_08, R.drawable.meteor_09, R.drawable.meteor_10, R.drawable.meteor_11, R.drawable.meteor_12, R.drawable.meteor_13, R.drawable.meteor_14, R.drawable.meteor_after_01, R.drawable.meteor_after_02, R.drawable.meteor_after_03, R.drawable.meteor_after_04, R.drawable.meteor_after_05, R.drawable.meteor_after_06, R.drawable.meteor_after_07, R.drawable.meteor_after_08, R.drawable.meteor_after_09, R.drawable.meteor_after_10, R.drawable.meteor_after_11, R.drawable.meteor_after_12, R.drawable.meteor_after_13, R.drawable.meteor_after_14, R.drawable.meteor_after_15, R.drawable.meteor_after_16, R.drawable.meteor_after_17, R.drawable.meteor_after_18, R.drawable.meteor_after_19, R.drawable.meteor_after_20, R.drawable.meteor_after_21, R.drawable.meteor_after_22, R.drawable.meteor_after_23, R.drawable.meteor_after_24, R.drawable.meteor_after_25};
        SurfaceHolder holder = getHolder();
        this.f55001a = holder;
        holder.addCallback(this);
    }

    public void o() {
        if (this.f55010j) {
            return;
        }
        setVisibility(0);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        this.f55008h = getMeasuredWidth() / 1.0f;
        this.f55009i = getMeasuredHeight() / 1.0f;
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setAnimsopt(c cVar) {
        this.f55011k = cVar;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i10, int i11) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        a aVar = new a(surfaceHolder);
        this.f55004d = aVar;
        aVar.start();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f55015o = true;
        Bitmap bitmap = this.f55005e;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Bitmap bitmap2 = this.f55006f;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        surfaceHolder.removeCallback(this);
    }

    public b(BaseStreamActivity baseStreamActivity, AttributeSet attributeSet) {
        super(baseStreamActivity, attributeSet);
        this.f55005e = null;
        this.f55006f = null;
        this.f55015o = false;
        this.f55003c = baseStreamActivity;
        n();
    }
}
