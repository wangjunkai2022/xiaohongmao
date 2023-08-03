package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.base.k;
import com.google.android.gms.internal.base.p;
import com.google.android.gms.internal.base.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class ImageManager {

    /* renamed from: h  reason: collision with root package name */
    private static final Object f29027h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private static HashSet<Uri> f29028i = new HashSet<>();

    /* renamed from: j  reason: collision with root package name */
    private static ImageManager f29029j;

    /* renamed from: a  reason: collision with root package name */
    private final Context f29030a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f29031b = new q(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f29032c = p.a().b(4, 2);

    /* renamed from: d  reason: collision with root package name */
    private final k f29033d = new k();

    /* renamed from: e  reason: collision with root package name */
    private final Map<h, ImageReceiver> f29034e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final Map<Uri, ImageReceiver> f29035f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final Map<Uri, Long> f29036g = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepName
    /* loaded from: classes2.dex */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zab;
        private final ArrayList<h> zac;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ImageReceiver(Uri uri) {
            super(new q(Looper.getMainLooper()));
            this.zab = uri;
            this.zac = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i4, Bundle bundle) {
            ImageManager imageManager = ImageManager.this;
            imageManager.f29032c.execute(new b(imageManager, this.zab, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zab(h hVar) {
            com.google.android.gms.common.internal.d.a("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zac.add(hVar);
        }

        public final void zac(h hVar) {
            com.google.android.gms.common.internal.d.a("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zac.remove(hVar);
        }

        public final void zad() {
            Intent intent = new Intent(com.google.android.gms.common.internal.g.f29129c);
            intent.setPackage("com.google.android.gms");
            intent.putExtra(com.google.android.gms.common.internal.g.f29130d, this.zab);
            intent.putExtra(com.google.android.gms.common.internal.g.f29131e, this);
            intent.putExtra(com.google.android.gms.common.internal.g.f29132f, 3);
            ImageManager.this.f29030a.sendBroadcast(intent);
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    /* loaded from: classes2.dex */
    public interface a {
        void a(@NonNull Uri uri, @Nullable Drawable drawable, boolean z9);
    }

    private ImageManager(Context context, boolean z9) {
        this.f29030a = context.getApplicationContext();
    }

    @NonNull
    public static ImageManager a(@NonNull Context context) {
        if (f29029j == null) {
            f29029j = new ImageManager(context, false);
        }
        return f29029j;
    }

    public void b(@NonNull ImageView imageView, int i4) {
        p(new f(imageView, i4));
    }

    public void c(@NonNull ImageView imageView, @NonNull Uri uri) {
        p(new f(imageView, uri));
    }

    public void d(@NonNull ImageView imageView, @NonNull Uri uri, int i4) {
        f fVar = new f(imageView, uri);
        fVar.f29052b = i4;
        p(fVar);
    }

    public void e(@NonNull a aVar, @NonNull Uri uri) {
        p(new g(aVar, uri));
    }

    public void f(@NonNull a aVar, @NonNull Uri uri, int i4) {
        g gVar = new g(aVar, uri);
        gVar.f29052b = i4;
        p(gVar);
    }

    public final void p(h hVar) {
        com.google.android.gms.common.internal.d.a("ImageManager.loadImage() must be called in the main thread");
        new c(this, hVar).run();
    }
}
