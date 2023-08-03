package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileNotFoundException;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: LocalVideoThumbnailProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class i0 implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f13002c = "VideoThumbnailProducer";
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    static final String f13003d = "createdThumbnail";

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13004a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f13005b;

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes.dex */
    class a extends a1<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ u0 f13006k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ s0 f13007l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ ImageRequest f13008m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, u0 producerListener, s0 producerContext, String producerName, final u0 val$imageRequest, final s0 val$producerContext, final ImageRequest val$listener) {
            super(consumer, producerListener, producerContext, producerName);
            this.f13006k = val$imageRequest;
            this.f13007l = val$producerContext;
            this.f13008m = val$listener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        public void e(Exception e4) {
            super.e(e4);
            this.f13006k.b(this.f13007l, i0.f13002c, false);
            this.f13007l.j(com.google.android.gms.common.internal.q.f29166b);
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
            return ImmutableMap.of(i0.f13003d, String.valueOf(result != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @r7.h
        /* renamed from: l */
        public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> c() throws Exception {
            String str;
            Bitmap h4;
            try {
                str = i0.this.i(this.f13008m);
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                h4 = ThumbnailUtils.createVideoThumbnail(str, i0.g(this.f13008m));
            } else {
                h4 = i0.h(i0.this.f13005b, this.f13008m.w());
            }
            if (h4 == null) {
                return null;
            }
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(h4, com.facebook.imagepipeline.bitmaps.h.a(), com.facebook.imagepipeline.image.h.f12520d, 0);
            this.f13007l.e(s0.a.f13228j0, "thumbnail");
            dVar.i(this.f13007l.getExtras());
            return com.facebook.common.references.a.D(dVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: m */
        public void f(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> result) {
            super.f(result);
            this.f13006k.b(this.f13007l, i0.f13002c, result != null);
            this.f13007l.j(com.google.android.gms.common.internal.q.f29166b);
        }
    }

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f13010a;

        b(final a1 val$cancellableProducerRunnable) {
            this.f13010a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f13010a.a();
        }
    }

    public i0(Executor executor, ContentResolver contentResolver) {
        this.f13004a = executor;
        this.f13005b = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(ImageRequest imageRequest) {
        return (imageRequest.o() > 96 || imageRequest.n() > 96) ? 1 : 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @r7.h
    public static Bitmap h(ContentResolver contentResolver, Uri uri) {
        try {
            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
            com.facebook.common.internal.j.i(openFileDescriptor);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(openFileDescriptor.getFileDescriptor());
            return mediaMetadataRetriever.getFrameAtTime(-1L);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @r7.h
    public String i(ImageRequest imageRequest) {
        Uri uri;
        String str;
        String[] strArr;
        Uri w9 = imageRequest.w();
        if (com.facebook.common.util.f.l(w9)) {
            return imageRequest.v().getPath();
        }
        if (com.facebook.common.util.f.k(w9)) {
            if ("com.android.providers.media.documents".equals(w9.getAuthority())) {
                String documentId = DocumentsContract.getDocumentId(w9);
                com.facebook.common.internal.j.i(documentId);
                String[] strArr2 = {documentId.split(":")[1]};
                str = "_id=?";
                uri = (Uri) com.facebook.common.internal.j.i(MediaStore.Video.Media.EXTERNAL_CONTENT_URI);
                strArr = strArr2;
            } else {
                uri = w9;
                str = null;
                strArr = null;
            }
            Cursor query = this.f13005b.query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        return query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (query != null) {
            }
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext) {
        u0 k10 = producerContext.k();
        ImageRequest c10 = producerContext.c();
        producerContext.h(com.google.android.gms.common.internal.q.f29166b, "video");
        a aVar = new a(consumer, k10, producerContext, f13002c, k10, producerContext, c10);
        producerContext.f(new b(aVar));
        this.f13004a.execute(aVar);
    }
}
