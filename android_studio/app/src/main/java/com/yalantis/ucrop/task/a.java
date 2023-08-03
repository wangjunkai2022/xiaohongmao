package com.yalantis.ucrop.task;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.yalantis.ucrop.model.c;
import com.yalantis.ucrop.util.e;
import com.yalantis.ucrop.util.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;

/* compiled from: BitmapCropTask.java */
/* loaded from: classes3.dex */
public class a extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: u  reason: collision with root package name */
    private static final String f61079u = "BitmapCropTask";

    /* renamed from: v  reason: collision with root package name */
    private static final String f61080v = "content";

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f61081a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f61082b;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f61083c;

    /* renamed from: d  reason: collision with root package name */
    private final RectF f61084d;

    /* renamed from: e  reason: collision with root package name */
    private float f61085e;

    /* renamed from: f  reason: collision with root package name */
    private float f61086f;

    /* renamed from: g  reason: collision with root package name */
    private final int f61087g;

    /* renamed from: h  reason: collision with root package name */
    private final int f61088h;

    /* renamed from: i  reason: collision with root package name */
    private final Bitmap.CompressFormat f61089i;

    /* renamed from: j  reason: collision with root package name */
    private final int f61090j;

    /* renamed from: k  reason: collision with root package name */
    private final String f61091k;

    /* renamed from: l  reason: collision with root package name */
    private final String f61092l;

    /* renamed from: m  reason: collision with root package name */
    private final Uri f61093m;

    /* renamed from: n  reason: collision with root package name */
    private final Uri f61094n;

    /* renamed from: o  reason: collision with root package name */
    private final com.yalantis.ucrop.model.b f61095o;

    /* renamed from: p  reason: collision with root package name */
    private final a6.a f61096p;

    /* renamed from: q  reason: collision with root package name */
    private int f61097q;

    /* renamed from: r  reason: collision with root package name */
    private int f61098r;

    /* renamed from: s  reason: collision with root package name */
    private int f61099s;

    /* renamed from: t  reason: collision with root package name */
    private int f61100t;

    public a(@NonNull Context context, @Nullable Bitmap bitmap, @NonNull c cVar, @NonNull com.yalantis.ucrop.model.a aVar, @Nullable a6.a aVar2) {
        this.f61081a = new WeakReference<>(context);
        this.f61082b = bitmap;
        this.f61083c = cVar.a();
        this.f61084d = cVar.c();
        this.f61085e = cVar.d();
        this.f61086f = cVar.b();
        this.f61087g = aVar.h();
        this.f61088h = aVar.i();
        this.f61089i = aVar.a();
        this.f61090j = aVar.b();
        this.f61091k = aVar.f();
        this.f61092l = aVar.g();
        this.f61093m = aVar.c();
        this.f61094n = aVar.d();
        this.f61095o = aVar.e();
        this.f61096p = aVar2;
    }

    private void a(Context context) throws IOException {
        boolean h4 = com.yalantis.ucrop.util.a.h(this.f61093m);
        boolean h10 = com.yalantis.ucrop.util.a.h(this.f61094n);
        if (h4 && h10) {
            f.b(context, this.f61097q, this.f61098r, this.f61093m, this.f61094n);
        } else if (h4) {
            f.c(context, this.f61097q, this.f61098r, this.f61093m, this.f61092l);
        } else if (h10) {
            f.d(context, new ExifInterface(this.f61091k), this.f61097q, this.f61098r, this.f61094n);
        } else {
            f.e(new ExifInterface(this.f61091k), this.f61097q, this.f61098r, this.f61092l);
        }
    }

    private boolean b() throws IOException {
        Bitmap bitmap;
        Context context = this.f61081a.get();
        if (context == null) {
            return false;
        }
        if (this.f61087g > 0 && this.f61088h > 0) {
            float width = this.f61083c.width() / this.f61085e;
            float height = this.f61083c.height() / this.f61085e;
            int i4 = this.f61087g;
            if (width > i4 || height > this.f61088h) {
                float min = Math.min(i4 / width, this.f61088h / height);
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(this.f61082b, Math.round(bitmap.getWidth() * min), Math.round(this.f61082b.getHeight() * min), false);
                Bitmap bitmap2 = this.f61082b;
                if (bitmap2 != createScaledBitmap) {
                    bitmap2.recycle();
                }
                this.f61082b = createScaledBitmap;
                this.f61085e /= min;
            }
        }
        if (this.f61086f != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setRotate(this.f61086f, this.f61082b.getWidth() / 2, this.f61082b.getHeight() / 2);
            Bitmap bitmap3 = this.f61082b;
            Bitmap createBitmap = Bitmap.createBitmap(bitmap3, 0, 0, bitmap3.getWidth(), this.f61082b.getHeight(), matrix, true);
            Bitmap bitmap4 = this.f61082b;
            if (bitmap4 != createBitmap) {
                bitmap4.recycle();
            }
            this.f61082b = createBitmap;
        }
        this.f61099s = Math.round((this.f61083c.left - this.f61084d.left) / this.f61085e);
        this.f61100t = Math.round((this.f61083c.top - this.f61084d.top) / this.f61085e);
        this.f61097q = Math.round(this.f61083c.width() / this.f61085e);
        int round = Math.round(this.f61083c.height() / this.f61085e);
        this.f61098r = round;
        boolean f10 = f(this.f61097q, round);
        Log.i(f61079u, "Should crop: " + f10);
        if (f10) {
            e(Bitmap.createBitmap(this.f61082b, this.f61099s, this.f61100t, this.f61097q, this.f61098r));
            if (this.f61089i.equals(Bitmap.CompressFormat.JPEG)) {
                a(context);
                return true;
            }
            return true;
        }
        e.a(context, this.f61093m, this.f61094n);
        return false;
    }

    private void e(@NonNull Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream openOutputStream;
        Context context = this.f61081a.get();
        if (context == null) {
            return;
        }
        OutputStream outputStream = null;
        try {
            openOutputStream = context.getContentResolver().openOutputStream(this.f61094n);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (IOException e4) {
                e = e4;
                byteArrayOutputStream = null;
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = null;
            }
        } catch (IOException e10) {
            e = e10;
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
        try {
            bitmap.compress(this.f61089i, this.f61090j, byteArrayOutputStream);
            openOutputStream.write(byteArrayOutputStream.toByteArray());
            bitmap.recycle();
            com.yalantis.ucrop.util.a.c(openOutputStream);
        } catch (IOException e11) {
            e = e11;
            outputStream = openOutputStream;
            try {
                Log.e(f61079u, e.getLocalizedMessage());
                com.yalantis.ucrop.util.a.c(outputStream);
                com.yalantis.ucrop.util.a.c(byteArrayOutputStream);
            } catch (Throwable th3) {
                th = th3;
                com.yalantis.ucrop.util.a.c(outputStream);
                com.yalantis.ucrop.util.a.c(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = openOutputStream;
            com.yalantis.ucrop.util.a.c(outputStream);
            com.yalantis.ucrop.util.a.c(byteArrayOutputStream);
            throw th;
        }
        com.yalantis.ucrop.util.a.c(byteArrayOutputStream);
    }

    private boolean f(int i4, int i10) {
        int round = Math.round(Math.max(i4, i10) / 1000.0f) + 1;
        if (this.f61087g <= 0 || this.f61088h <= 0) {
            float f10 = round;
            return Math.abs(this.f61083c.left - this.f61084d.left) > f10 || Math.abs(this.f61083c.top - this.f61084d.top) > f10 || Math.abs(this.f61083c.bottom - this.f61084d.bottom) > f10 || Math.abs(this.f61083c.right - this.f61084d.right) > f10 || this.f61086f != 0.0f;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: c */
    public Throwable doInBackground(Void... voidArr) {
        Bitmap bitmap = this.f61082b;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.f61084d.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        if (this.f61094n == null) {
            return new NullPointerException("ImageOutputUri is null");
        }
        try {
            b();
            this.f61082b = null;
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: d */
    public void onPostExecute(@Nullable Throwable th) {
        Uri fromFile;
        a6.a aVar = this.f61096p;
        if (aVar != null) {
            if (th == null) {
                if (com.yalantis.ucrop.util.a.h(this.f61094n)) {
                    fromFile = this.f61094n;
                } else {
                    fromFile = Uri.fromFile(new File(this.f61092l));
                }
                this.f61096p.a(fromFile, this.f61099s, this.f61100t, this.f61097q, this.f61098r);
                return;
            }
            aVar.b(th);
        }
    }
}
