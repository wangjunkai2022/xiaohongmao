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

/* compiled from: FireworksView.java */
/* loaded from: classes3.dex */
public class a extends SurfaceView implements SurfaceHolder.Callback {

    /* renamed from: a  reason: collision with root package name */
    private SurfaceHolder f54982a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f54983b;

    /* renamed from: c  reason: collision with root package name */
    private Context f54984c;

    /* renamed from: d  reason: collision with root package name */
    private C0462a f54985d;

    /* renamed from: e  reason: collision with root package name */
    private Bitmap f54986e;

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f54987f;

    /* renamed from: g  reason: collision with root package name */
    private Resources f54988g;

    /* renamed from: h  reason: collision with root package name */
    private float f54989h;

    /* renamed from: i  reason: collision with root package name */
    private float f54990i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54991j;

    /* renamed from: k  reason: collision with root package name */
    private c f54992k;

    /* renamed from: l  reason: collision with root package name */
    private float f54993l;

    /* renamed from: m  reason: collision with root package name */
    private float f54994m;

    /* renamed from: n  reason: collision with root package name */
    private float f54995n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f54996o;

    /* compiled from: FireworksView.java */
    /* renamed from: com.qennnsad.aknkaksd.util.roomanim.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0462a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        SurfaceHolder f54997a;

        /* renamed from: b  reason: collision with root package name */
        Paint f54998b = new Paint();

        /* compiled from: FireworksView.java */
        /* renamed from: com.qennnsad.aknkaksd.util.roomanim.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0463a implements Runnable {
            RunnableC0463a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.setVisibility(8);
                if (a.this.f54992k != null) {
                    a.this.f54992k.a();
                }
            }
        }

        public C0462a(SurfaceHolder surfaceHolder) {
            this.f54997a = surfaceHolder;
        }

        private Bitmap a(Bitmap bitmap) {
            Matrix matrix = new Matrix();
            matrix.postScale(((bitmap.getWidth() * a.this.f54990i) / bitmap.getHeight()) / bitmap.getWidth(), a.this.f54990i / bitmap.getHeight());
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            a aVar = a.this;
            aVar.f54993l = (aVar.f54989h - createBitmap.getWidth()) / 2.0f;
            bitmap.recycle();
            return createBitmap;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
            r10.f54997a.unlockCanvasAndPost(r5);
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
                com.qennnsad.aknkaksd.util.roomanim.a r0 = com.qennnsad.aknkaksd.util.roomanim.a.this
                r1 = 1
                com.qennnsad.aknkaksd.util.roomanim.a.a(r0, r1)
                com.qennnsad.aknkaksd.util.roomanim.a r0 = com.qennnsad.aknkaksd.util.roomanim.a.this
                r2 = 0
                com.qennnsad.aknkaksd.util.roomanim.a.c(r0, r2)
                com.qennnsad.aknkaksd.util.roomanim.a r0 = com.qennnsad.aknkaksd.util.roomanim.a.this
                android.content.Context r3 = com.qennnsad.aknkaksd.util.roomanim.a.f(r0)
                android.content.res.Resources r3 = r3.getResources()
                com.qennnsad.aknkaksd.util.roomanim.a.e(r0, r3)
                r0 = 0
                r3 = 0
            L1b:
                com.qennnsad.aknkaksd.util.roomanim.a r4 = com.qennnsad.aknkaksd.util.roomanim.a.this
                int[] r4 = com.qennnsad.aknkaksd.util.roomanim.a.g(r4)
                int r4 = r4.length
                if (r3 >= r4) goto La1
                com.qennnsad.aknkaksd.util.roomanim.a r4 = com.qennnsad.aknkaksd.util.roomanim.a.this
                boolean r4 = com.qennnsad.aknkaksd.util.roomanim.a.h(r4)
                if (r4 == 0) goto L2d
                return
            L2d:
                android.view.SurfaceHolder r4 = r10.f54997a     // Catch: java.lang.Throwable -> L8a java.lang.InterruptedException -> L8c
                monitor-enter(r4)     // Catch: java.lang.Throwable -> L8a java.lang.InterruptedException -> L8c
                com.qennnsad.aknkaksd.util.roomanim.a r5 = com.qennnsad.aknkaksd.util.roomanim.a.this     // Catch: java.lang.Throwable -> L87
                android.content.res.Resources r6 = com.qennnsad.aknkaksd.util.roomanim.a.d(r5)     // Catch: java.lang.Throwable -> L87
                com.qennnsad.aknkaksd.util.roomanim.a r7 = com.qennnsad.aknkaksd.util.roomanim.a.this     // Catch: java.lang.Throwable -> L87
                int[] r7 = com.qennnsad.aknkaksd.util.roomanim.a.g(r7)     // Catch: java.lang.Throwable -> L87
                r7 = r7[r3]     // Catch: java.lang.Throwable -> L87
                android.graphics.Bitmap r6 = android.graphics.BitmapFactory.decodeResource(r6, r7)     // Catch: java.lang.Throwable -> L87
                com.qennnsad.aknkaksd.util.roomanim.a.c(r5, r6)     // Catch: java.lang.Throwable -> L87
                android.view.SurfaceHolder r5 = r10.f54997a     // Catch: java.lang.Throwable -> L87
                android.graphics.Canvas r5 = r5.lockCanvas()     // Catch: java.lang.Throwable -> L87
                android.graphics.PorterDuff$Mode r6 = android.graphics.PorterDuff.Mode.CLEAR     // Catch: java.lang.Throwable -> L84
                r5.drawColor(r0, r6)     // Catch: java.lang.Throwable -> L84
                com.qennnsad.aknkaksd.util.roomanim.a r6 = com.qennnsad.aknkaksd.util.roomanim.a.this     // Catch: java.lang.Throwable -> L84
                android.graphics.Bitmap r6 = com.qennnsad.aknkaksd.util.roomanim.a.b(r6)     // Catch: java.lang.Throwable -> L84
                android.graphics.Bitmap r6 = r10.a(r6)     // Catch: java.lang.Throwable -> L84
                com.qennnsad.aknkaksd.util.roomanim.a r7 = com.qennnsad.aknkaksd.util.roomanim.a.this     // Catch: java.lang.Throwable -> L84
                float r7 = com.qennnsad.aknkaksd.util.roomanim.a.i(r7)     // Catch: java.lang.Throwable -> L84
                r8 = 0
                android.graphics.Paint r9 = r10.f54998b     // Catch: java.lang.Throwable -> L84
                r5.drawBitmap(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L84
                com.qennnsad.aknkaksd.util.roomanim.a r6 = com.qennnsad.aknkaksd.util.roomanim.a.this     // Catch: java.lang.Throwable -> L84
                int[] r6 = com.qennnsad.aknkaksd.util.roomanim.a.g(r6)     // Catch: java.lang.Throwable -> L84
                int r6 = r6.length     // Catch: java.lang.Throwable -> L84
                int r6 = r6 - r1
                if (r3 != r6) goto L76
                r6 = 2000(0x7d0, double:9.88E-321)
                java.lang.Thread.sleep(r6)     // Catch: java.lang.Throwable -> L84
                goto L7b
            L76:
                r6 = 18
                java.lang.Thread.sleep(r6)     // Catch: java.lang.Throwable -> L84
            L7b:
                int r3 = r3 + 1
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L84
                android.view.SurfaceHolder r4 = r10.f54997a
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
                android.view.SurfaceHolder r1 = r10.f54997a
                r1.unlockCanvasAndPost(r2)
                goto La1
            L98:
                if (r2 != 0) goto L9b
                goto La1
            L9b:
                android.view.SurfaceHolder r0 = r10.f54997a
                r0.unlockCanvasAndPost(r2)
                throw r1
            La1:
                com.qennnsad.aknkaksd.util.roomanim.a r1 = com.qennnsad.aknkaksd.util.roomanim.a.this
                com.qennnsad.aknkaksd.util.roomanim.a.a(r1, r0)
                com.qennnsad.aknkaksd.util.roomanim.a r0 = com.qennnsad.aknkaksd.util.roomanim.a.this
                com.qennnsad.aknkaksd.util.roomanim.a$a$a r1 = new com.qennnsad.aknkaksd.util.roomanim.a$a$a
                r1.<init>()
                r0.post(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.util.roomanim.a.C0462a.run():void");
        }
    }

    public a(Context context) {
        super(context);
        this.f54986e = null;
        this.f54987f = null;
        this.f54996o = false;
        this.f54984c = context;
        n();
    }

    public void n() {
        setZOrderOnTop(true);
        getHolder().setFormat(-3);
        this.f54983b = new int[]{R.drawable.fireworks_1, R.drawable.fireworks_2, R.drawable.fireworks_3, R.drawable.fireworks_4, R.drawable.fireworks_5, R.drawable.fireworks_6, R.drawable.fireworks_7, R.drawable.fireworks_8, R.drawable.fireworks_9, R.drawable.fireworks_10, R.drawable.fireworks_flower1, R.drawable.fireworks_flower2, R.drawable.fireworks_flower3, R.drawable.fireworks_flower4, R.drawable.gift_heart_1, R.drawable.gift_heart_2, R.drawable.gift_heart_3, R.drawable.gift_heart_4, R.drawable.gift_heart_5, R.drawable.gift_heart_6, R.drawable.gift_heart_7, R.drawable.gift_heart_8, R.drawable.gift_heart_9, R.drawable.gift_heart_10, R.drawable.gift_heart_11, R.drawable.gift_heart_12, R.drawable.gift_heart_13, R.drawable.gift_heart_14, R.drawable.gift_heart_15, R.drawable.gift_heart_16, R.drawable.gift_heart_17, R.drawable.gift_heart_18, R.drawable.gift_heart_19, R.drawable.gift_heart_20};
        SurfaceHolder holder = getHolder();
        this.f54982a = holder;
        holder.addCallback(this);
    }

    public void o() {
        if (this.f54991j) {
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
        this.f54989h = getMeasuredWidth() / 1.0f;
        this.f54990i = getMeasuredHeight() / 1.0f;
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setAnimsopt(c cVar) {
        this.f54992k = cVar;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i10, int i11) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        C0462a c0462a = new C0462a(surfaceHolder);
        this.f54985d = c0462a;
        c0462a.start();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f54996o = true;
        Bitmap bitmap = this.f54986e;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Bitmap bitmap2 = this.f54987f;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        surfaceHolder.removeCallback(this);
    }

    public a(BaseStreamActivity baseStreamActivity, AttributeSet attributeSet) {
        super(baseStreamActivity, attributeSet);
        this.f54986e = null;
        this.f54987f = null;
        this.f54996o = false;
        this.f54984c = baseStreamActivity;
        n();
    }
}
