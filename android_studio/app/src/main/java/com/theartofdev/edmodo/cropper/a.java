package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.c;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BitmapCroppingWorkerTask.java */
/* loaded from: classes3.dex */
public final class a extends AsyncTask<Void, Void, C0495a> {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<CropImageView> f58900a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f58901b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f58902c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f58903d;

    /* renamed from: e  reason: collision with root package name */
    private final float[] f58904e;

    /* renamed from: f  reason: collision with root package name */
    private final int f58905f;

    /* renamed from: g  reason: collision with root package name */
    private final int f58906g;

    /* renamed from: h  reason: collision with root package name */
    private final int f58907h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f58908i;

    /* renamed from: j  reason: collision with root package name */
    private final int f58909j;

    /* renamed from: k  reason: collision with root package name */
    private final int f58910k;

    /* renamed from: l  reason: collision with root package name */
    private final int f58911l;

    /* renamed from: m  reason: collision with root package name */
    private final int f58912m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f58913n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f58914o;

    /* renamed from: p  reason: collision with root package name */
    private final CropImageView.RequestSizeOptions f58915p;

    /* renamed from: q  reason: collision with root package name */
    private final Uri f58916q;

    /* renamed from: r  reason: collision with root package name */
    private final Bitmap.CompressFormat f58917r;

    /* renamed from: s  reason: collision with root package name */
    private final int f58918s;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(CropImageView cropImageView, Bitmap bitmap, float[] fArr, int i4, boolean z9, int i10, int i11, int i12, int i13, boolean z10, boolean z11, CropImageView.RequestSizeOptions requestSizeOptions, Uri uri, Bitmap.CompressFormat compressFormat, int i14) {
        this.f58900a = new WeakReference<>(cropImageView);
        this.f58903d = cropImageView.getContext();
        this.f58901b = bitmap;
        this.f58904e = fArr;
        this.f58902c = null;
        this.f58905f = i4;
        this.f58908i = z9;
        this.f58909j = i10;
        this.f58910k = i11;
        this.f58911l = i12;
        this.f58912m = i13;
        this.f58913n = z10;
        this.f58914o = z11;
        this.f58915p = requestSizeOptions;
        this.f58916q = uri;
        this.f58917r = compressFormat;
        this.f58918s = i14;
        this.f58906g = 0;
        this.f58907h = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public C0495a doInBackground(Void... voidArr) {
        c.a g4;
        try {
            if (isCancelled()) {
                return null;
            }
            Uri uri = this.f58902c;
            if (uri != null) {
                g4 = c.d(this.f58903d, uri, this.f58904e, this.f58905f, this.f58906g, this.f58907h, this.f58908i, this.f58909j, this.f58910k, this.f58911l, this.f58912m, this.f58913n, this.f58914o);
            } else {
                Bitmap bitmap = this.f58901b;
                if (bitmap != null) {
                    g4 = c.g(bitmap, this.f58904e, this.f58905f, this.f58908i, this.f58909j, this.f58910k, this.f58913n, this.f58914o);
                } else {
                    return new C0495a((Bitmap) null, 1);
                }
            }
            Bitmap y9 = c.y(g4.f58941a, this.f58911l, this.f58912m, this.f58915p);
            Uri uri2 = this.f58916q;
            if (uri2 == null) {
                return new C0495a(y9, g4.f58942b);
            }
            c.C(this.f58903d, y9, uri2, this.f58917r, this.f58918s);
            if (y9 != null) {
                y9.recycle();
            }
            return new C0495a(this.f58916q, g4.f58942b);
        } catch (Exception e4) {
            return new C0495a(e4, this.f58916q != null);
        }
    }

    public Uri b() {
        return this.f58902c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: c */
    public void onPostExecute(C0495a c0495a) {
        Bitmap bitmap;
        CropImageView cropImageView;
        if (c0495a != null) {
            boolean z9 = false;
            if (!isCancelled() && (cropImageView = this.f58900a.get()) != null) {
                z9 = true;
                cropImageView.x(c0495a);
            }
            if (z9 || (bitmap = c0495a.f58919a) == null) {
                return;
            }
            bitmap.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapCroppingWorkerTask.java */
    /* renamed from: com.theartofdev.edmodo.cropper.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0495a {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f58919a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri f58920b;

        /* renamed from: c  reason: collision with root package name */
        final Exception f58921c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f58922d;

        /* renamed from: e  reason: collision with root package name */
        final int f58923e;

        C0495a(Bitmap bitmap, int i4) {
            this.f58919a = bitmap;
            this.f58920b = null;
            this.f58921c = null;
            this.f58922d = false;
            this.f58923e = i4;
        }

        C0495a(Uri uri, int i4) {
            this.f58919a = null;
            this.f58920b = uri;
            this.f58921c = null;
            this.f58922d = true;
            this.f58923e = i4;
        }

        C0495a(Exception exc, boolean z9) {
            this.f58919a = null;
            this.f58920b = null;
            this.f58921c = exc;
            this.f58922d = z9;
            this.f58923e = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(CropImageView cropImageView, Uri uri, float[] fArr, int i4, int i10, int i11, boolean z9, int i12, int i13, int i14, int i15, boolean z10, boolean z11, CropImageView.RequestSizeOptions requestSizeOptions, Uri uri2, Bitmap.CompressFormat compressFormat, int i16) {
        this.f58900a = new WeakReference<>(cropImageView);
        this.f58903d = cropImageView.getContext();
        this.f58902c = uri;
        this.f58904e = fArr;
        this.f58905f = i4;
        this.f58908i = z9;
        this.f58909j = i12;
        this.f58910k = i13;
        this.f58906g = i10;
        this.f58907h = i11;
        this.f58911l = i14;
        this.f58912m = i15;
        this.f58913n = z10;
        this.f58914o = z11;
        this.f58915p = requestSizeOptions;
        this.f58916q = uri2;
        this.f58917r = compressFormat;
        this.f58918s = i16;
        this.f58901b = null;
    }
}
