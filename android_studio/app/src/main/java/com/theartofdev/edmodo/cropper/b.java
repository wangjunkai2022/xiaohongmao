package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import com.theartofdev.edmodo.cropper.c;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BitmapLoadingWorkerTask.java */
/* loaded from: classes3.dex */
public final class b extends AsyncTask<Void, Void, a> {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<CropImageView> f58924a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f58925b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f58926c;

    /* renamed from: d  reason: collision with root package name */
    private final int f58927d;

    /* renamed from: e  reason: collision with root package name */
    private final int f58928e;

    public b(CropImageView cropImageView, Uri uri) {
        this.f58925b = uri;
        this.f58924a = new WeakReference<>(cropImageView);
        this.f58926c = cropImageView.getContext();
        DisplayMetrics displayMetrics = cropImageView.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        double d4 = f10 > 1.0f ? 1.0f / f10 : 1.0d;
        this.f58927d = (int) (displayMetrics.widthPixels * d4);
        this.f58928e = (int) (displayMetrics.heightPixels * d4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public a doInBackground(Void... voidArr) {
        try {
            if (isCancelled()) {
                return null;
            }
            c.a l10 = c.l(this.f58926c, this.f58925b, this.f58927d, this.f58928e);
            if (isCancelled()) {
                return null;
            }
            c.b A = c.A(l10.f58941a, this.f58926c, this.f58925b);
            return new a(this.f58925b, A.f58943a, l10.f58942b, A.f58944b);
        } catch (Exception e4) {
            return new a(this.f58925b, e4);
        }
    }

    public Uri b() {
        return this.f58925b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: c */
    public void onPostExecute(a aVar) {
        Bitmap bitmap;
        CropImageView cropImageView;
        if (aVar != null) {
            boolean z9 = false;
            if (!isCancelled() && (cropImageView = this.f58924a.get()) != null) {
                z9 = true;
                cropImageView.y(aVar);
            }
            if (z9 || (bitmap = aVar.f58930b) == null) {
                return;
            }
            bitmap.recycle();
        }
    }

    /* compiled from: BitmapLoadingWorkerTask.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f58929a;

        /* renamed from: b  reason: collision with root package name */
        public final Bitmap f58930b;

        /* renamed from: c  reason: collision with root package name */
        public final int f58931c;

        /* renamed from: d  reason: collision with root package name */
        public final int f58932d;

        /* renamed from: e  reason: collision with root package name */
        public final Exception f58933e;

        a(Uri uri, Bitmap bitmap, int i4, int i10) {
            this.f58929a = uri;
            this.f58930b = bitmap;
            this.f58931c = i4;
            this.f58932d = i10;
            this.f58933e = null;
        }

        a(Uri uri, Exception exc) {
            this.f58929a = uri;
            this.f58930b = null;
            this.f58931c = 0;
            this.f58932d = 0;
            this.f58933e = exc;
        }
    }
}
