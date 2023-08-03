package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.os.CancellationSignal;
import android.util.Size;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: LocalThumbnailBitmapProducer.java */
@RequiresApi(29)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class h0 implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f12984c = "LocalThumbnailBitmapProducer";
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    static final String f12985d = "createdThumbnail";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12986a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f12987b;

    /* compiled from: LocalThumbnailBitmapProducer.java */
    /* loaded from: classes.dex */
    class a extends a1<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ u0 f12988k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ s0 f12989l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12990m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ CancellationSignal f12991n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, u0 producerListener, s0 producerContext, String producerName, final u0 val$cancellationSignal, final s0 val$imageRequest, final ImageRequest val$context, final CancellationSignal val$listener) {
            super(consumer, producerListener, producerContext, producerName);
            this.f12988k = val$cancellationSignal;
            this.f12989l = val$imageRequest;
            this.f12990m = val$context;
            this.f12991n = val$listener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        public void d() {
            super.d();
            this.f12991n.cancel();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        public void e(Exception e4) {
            super.e(e4);
            this.f12988k.b(this.f12989l, h0.f12984c, false);
            this.f12989l.j(com.google.android.gms.common.internal.q.f29166b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> result) {
            com.facebook.common.references.a.k(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1
        /* renamed from: k */
        public Map<String, String> i(@r7.h final com.facebook.common.references.a<com.facebook.imagepipeline.image.c> result) {
            return ImmutableMap.of(h0.f12985d, String.valueOf(result != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @r7.h
        /* renamed from: l */
        public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c() throws IOException {
            Bitmap loadThumbnail = h0.this.f12987b.loadThumbnail(this.f12990m.w(), new Size(this.f12990m.o(), this.f12990m.n()), this.f12991n);
            if (loadThumbnail == null) {
                return null;
            }
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(loadThumbnail, com.facebook.imagepipeline.bitmaps.h.a(), com.facebook.imagepipeline.image.h.f12520d, 0);
            this.f12989l.e(s0.a.f13228j0, "thumbnail");
            dVar.i(this.f12989l.getExtras());
            return com.facebook.common.references.a.D(dVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: m */
        public void f(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> result) {
            super.f(result);
            this.f12988k.b(this.f12989l, h0.f12984c, result != null);
            this.f12989l.j(com.google.android.gms.common.internal.q.f29166b);
        }
    }

    /* compiled from: LocalThumbnailBitmapProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f12993a;

        b(final a1 val$cancellableProducerRunnable) {
            this.f12993a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f12993a.a();
        }
    }

    public h0(Executor executor, ContentResolver contentResolver) {
        this.f12986a = executor;
        this.f12987b = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 context) {
        u0 k10 = context.k();
        ImageRequest c10 = context.c();
        context.h(com.google.android.gms.common.internal.q.f29166b, "thumbnail_bitmap");
        a aVar = new a(consumer, k10, context, f12984c, k10, context, c10, new CancellationSignal());
        context.f(new b(aVar));
        this.f12986a.execute(aVar);
    }
}
