package com.yalantis.ucrop.task;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.Objects;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;

/* compiled from: BitmapLoadTask.java */
/* loaded from: classes3.dex */
public class b extends AsyncTask<Void, Void, a> {

    /* renamed from: g  reason: collision with root package name */
    private static final String f61101g = "BitmapWorkerTask";

    /* renamed from: h  reason: collision with root package name */
    private static final int f61102h = 104857600;

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f61103a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f61104b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f61105c;

    /* renamed from: d  reason: collision with root package name */
    private final int f61106d;

    /* renamed from: e  reason: collision with root package name */
    private final int f61107e;

    /* renamed from: f  reason: collision with root package name */
    private final a6.b f61108f;

    public b(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i4, int i10, a6.b bVar) {
        this.f61103a = new WeakReference<>(context);
        this.f61104b = uri;
        this.f61105c = uri2;
        this.f61106d = i4;
        this.f61107e = i10;
        this.f61108f = bVar;
    }

    private boolean a(Bitmap bitmap, BitmapFactory.Options options) {
        if ((bitmap != null ? bitmap.getByteCount() : 0) > f61102h) {
            options.inSampleSize *= 2;
            return true;
        }
        return false;
    }

    private void c(@NonNull Uri uri, @Nullable Uri uri2) throws NullPointerException, IOException {
        Closeable closeable;
        Response response;
        Response execute;
        BufferedSource source;
        Log.d(f61101g, "downloadFile");
        Objects.requireNonNull(uri2, "Output Uri is null - cannot download image");
        Context context = this.f61103a.get();
        Objects.requireNonNull(context, "Context is null");
        OkHttpClient a10 = com.yalantis.ucrop.b.f59990b.a();
        BufferedSource bufferedSource = null;
        try {
            execute = a10.newCall(new Request.Builder().url(uri.toString()).build()).execute();
            try {
                source = execute.body().source();
            } catch (Throwable th) {
                th = th;
                response = execute;
                closeable = null;
            }
        } catch (Throwable th2) {
            th = th2;
            closeable = null;
            response = null;
        }
        try {
            OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri2);
            if (openOutputStream != null) {
                Sink sink = Okio.sink(openOutputStream);
                source.readAll(sink);
                com.yalantis.ucrop.util.a.c(source);
                com.yalantis.ucrop.util.a.c(sink);
                com.yalantis.ucrop.util.a.c(execute.body());
                a10.dispatcher().cancelAll();
                this.f61104b = this.f61105c;
                return;
            }
            throw new NullPointerException("OutputStream for given output Uri is null");
        } catch (Throwable th3) {
            th = th3;
            response = execute;
            closeable = null;
            bufferedSource = source;
            com.yalantis.ucrop.util.a.c(bufferedSource);
            com.yalantis.ucrop.util.a.c(closeable);
            if (response != null) {
                com.yalantis.ucrop.util.a.c(response.body());
            }
            a10.dispatcher().cancelAll();
            this.f61104b = this.f61105c;
            throw th;
        }
    }

    private void e() throws NullPointerException, IOException {
        String scheme = this.f61104b.getScheme();
        Log.d(f61101g, "Uri scheme: " + scheme);
        if (!"http".equals(scheme) && !"https".equals(scheme)) {
            if ("file".equals(scheme) || "content".equals(scheme)) {
                return;
            }
            Log.e(f61101g, "Invalid Uri scheme " + scheme);
            throw new IllegalArgumentException("Invalid Uri scheme" + scheme);
        }
        try {
            c(this.f61104b, this.f61105c);
        } catch (IOException | NullPointerException e4) {
            Log.e(f61101g, "Downloading failed", e4);
            throw e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @NonNull
    /* renamed from: b */
    public a doInBackground(Void... voidArr) {
        InputStream openInputStream;
        Context context = this.f61103a.get();
        if (context == null) {
            return new a(new NullPointerException("context is null"));
        }
        if (this.f61104b == null) {
            return new a(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            e();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = com.yalantis.ucrop.util.a.a(options, this.f61106d, this.f61107e);
            boolean z9 = false;
            options.inJustDecodeBounds = false;
            Bitmap bitmap = null;
            while (!z9) {
                try {
                    openInputStream = context.getContentResolver().openInputStream(this.f61104b);
                    bitmap = BitmapFactory.decodeStream(openInputStream, null, options);
                } catch (IOException e4) {
                    Log.e(f61101g, "doInBackground: ImageDecoder.createSource: ", e4);
                    return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f61104b + "]", e4));
                } catch (OutOfMemoryError e10) {
                    Log.e(f61101g, "doInBackground: BitmapFactory.decodeFileDescriptor: ", e10);
                    options.inSampleSize *= 2;
                }
                if (options.outWidth != -1 && options.outHeight != -1) {
                    com.yalantis.ucrop.util.a.c(openInputStream);
                    if (!a(bitmap, options)) {
                        z9 = true;
                    }
                } else {
                    a aVar = new a(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.f61104b + "]"));
                    com.yalantis.ucrop.util.a.c(openInputStream);
                    return aVar;
                }
            }
            if (bitmap == null) {
                return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f61104b + "]"));
            }
            int g4 = com.yalantis.ucrop.util.a.g(context, this.f61104b);
            int e11 = com.yalantis.ucrop.util.a.e(g4);
            int f10 = com.yalantis.ucrop.util.a.f(g4);
            com.yalantis.ucrop.model.b bVar = new com.yalantis.ucrop.model.b(g4, e11, f10);
            Matrix matrix = new Matrix();
            if (e11 != 0) {
                matrix.preRotate(e11);
            }
            if (f10 != 1) {
                matrix.postScale(f10, 1.0f);
            }
            if (!matrix.isIdentity()) {
                return new a(com.yalantis.ucrop.util.a.i(bitmap, matrix), bVar);
            }
            return new a(bitmap, bVar);
        } catch (IOException | NullPointerException e12) {
            return new a(e12);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: d */
    public void onPostExecute(@NonNull a aVar) {
        Exception exc = aVar.f61111c;
        if (exc == null) {
            this.f61108f.b(aVar.f61109a, aVar.f61110b, this.f61104b, this.f61105c);
        } else {
            this.f61108f.a(exc);
        }
    }

    /* compiled from: BitmapLoadTask.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f61109a;

        /* renamed from: b  reason: collision with root package name */
        com.yalantis.ucrop.model.b f61110b;

        /* renamed from: c  reason: collision with root package name */
        Exception f61111c;

        public a(@NonNull Bitmap bitmap, @NonNull com.yalantis.ucrop.model.b bVar) {
            this.f61109a = bitmap;
            this.f61110b = bVar;
        }

        public a(@NonNull Exception exc) {
            this.f61111c = exc;
        }
    }
}
