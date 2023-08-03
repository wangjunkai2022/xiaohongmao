package com.im.freechat.extend;

import android.net.Uri;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.source.q0;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.upstream.m;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: MediaMetadataCompatExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\b\u001a\u00020\u0005*\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u001a\u0014\u0010\t\u001a\u00020\u0005*\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\n\u001a\u0014\u0010\r\u001a\u00020\u0005*\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0006\u001a\u0014\u0010\u000e\u001a\u00020\u0005*\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u0006\u001a\u0018\u0010\u0011\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00000\u000f2\u0006\u0010\u0002\u001a\u00020\u0001\"\u001b\u0010\u0017\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0016\u0010\u001b\u001a\u00020\u0018*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a\"\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u0006*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d\"\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b \u0010!\"\u0018\u0010$\u001a\u0004\u0018\u00010\u0006*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b#\u0010\u001d\"\u0016\u0010'\u001a\u00020\n*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b%\u0010&\"\u0018\u0010(\u001a\u0004\u0018\u00010\u0006*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u001d\"\u0016\u0010,\u001a\u00020)*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u0006-"}, d2 = {"Landroid/support/v4/media/MediaMetadataCompat;", "Lcom/google/android/exoplayer2/upstream/m$a;", "dataSourceFactory", "Lcom/google/android/exoplayer2/source/q0;", "o", "Landroid/support/v4/media/MediaMetadataCompat$b;", "", "value", "j", "l", "", ContextChain.TAG_INFRA, "uri", "k", "m", "", "Lcom/google/android/exoplayer2/source/i;", "n", "Ljava/text/SimpleDateFormat;", "a", "Lkotlin/Lazy;", "f", "()Ljava/text/SimpleDateFormat;", "rfc339dateFormatter", "Landroid/support/v4/media/MediaDescriptionCompat;", "c", "(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaDescriptionCompat;", "fullDescription", "d", "(Landroid/support/v4/media/MediaMetadataCompat;)Ljava/lang/String;", "id", "Landroid/net/Uri;", "e", "(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/net/Uri;", "mediaUri", "g", MessageBundle.TITLE_ENTRY, "b", "(Landroid/support/v4/media/MediaMetadataCompat;)J", "duration", "date", "", "h", "(Landroid/support/v4/media/MediaMetadataCompat;)Z", "isVideo", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final Lazy f41953a = LazyKt.lazy(a.f41954a);

    /* compiled from: MediaMetadataCompatExtensions.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ljava/text/SimpleDateFormat;", "a", "()Ljava/text/SimpleDateFormat;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<SimpleDateFormat> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f41954a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final SimpleDateFormat invoke() {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        }
    }

    @m8.h
    public static final String a(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        return mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_DATE);
    }

    public static final long b(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        return mediaMetadataCompat.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
    }

    @m8.g
    public static final MediaDescriptionCompat c(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        MediaDescriptionCompat a10 = new MediaDescriptionCompat.b().b(mediaMetadataCompat.getDescription().getDescription()).f(mediaMetadataCompat.getDescription().getMediaId()).i(mediaMetadataCompat.getDescription().getTitle()).g(mediaMetadataCompat.getDescription().getMediaUri()).c(mediaMetadataCompat.getBundle()).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder()\n            .s…setExtras(bundle).build()");
        return a10;
    }

    @m8.h
    public static final String d(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        return mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
    }

    @m8.h
    public static final Uri e(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        String string = mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_URI);
        if (string != null) {
            Uri parse = Uri.parse(string);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
            return parse;
        }
        return null;
    }

    @m8.g
    public static final SimpleDateFormat f() {
        return (SimpleDateFormat) f41953a.getValue();
    }

    @m8.h
    public static final String g(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        return mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
    }

    public static final boolean h(@m8.g MediaMetadataCompat mediaMetadataCompat) {
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        return Intrinsics.areEqual(mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_ALBUM), "1");
    }

    @m8.g
    public static final MediaMetadataCompat.b i(@m8.g MediaMetadataCompat.b bVar, long j4) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.e(MediaMetadataCompat.METADATA_KEY_DATE, f().format(new Date(j4)));
        return bVar;
    }

    @m8.g
    public static final MediaMetadataCompat.b j(@m8.g MediaMetadataCompat.b bVar, @m8.h String str) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.e(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, str);
        return bVar;
    }

    @m8.g
    public static final MediaMetadataCompat.b k(@m8.g MediaMetadataCompat.b bVar, @m8.h String str) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.e(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, str);
        return bVar;
    }

    @m8.g
    public static final MediaMetadataCompat.b l(@m8.g MediaMetadataCompat.b bVar, @m8.h String str) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.e(MediaMetadataCompat.METADATA_KEY_TITLE, str);
        return bVar;
    }

    @m8.g
    public static final MediaMetadataCompat.b m(@m8.g MediaMetadataCompat.b bVar, @m8.h String str) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        bVar.e(MediaMetadataCompat.METADATA_KEY_ALBUM, str);
        return bVar;
    }

    @m8.g
    public static final com.google.android.exoplayer2.source.i n(@m8.g List<MediaMetadataCompat> list, @m8.g m.a dataSourceFactory) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
        com.google.android.exoplayer2.source.i iVar = new com.google.android.exoplayer2.source.i(new z[0]);
        for (MediaMetadataCompat mediaMetadataCompat : list) {
            iVar.P(o(mediaMetadataCompat, dataSourceFactory));
        }
        return iVar;
    }

    @m8.g
    public static final q0 o(@m8.g MediaMetadataCompat mediaMetadataCompat, @m8.g m.a dataSourceFactory) {
        Uri uri;
        Intrinsics.checkNotNullParameter(mediaMetadataCompat, "<this>");
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
        q0.b bVar = new q0.b(dataSourceFactory);
        MediaDescriptionCompat a10 = new MediaDescriptionCompat.b().b(mediaMetadataCompat.getDescription().getDescription()).f(mediaMetadataCompat.getDescription().getMediaId()).i(mediaMetadataCompat.getDescription().getTitle()).g(mediaMetadataCompat.getDescription().getMediaUri()).c(mediaMetadataCompat.getBundle()).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder()\n            .s…setExtras(bundle).build()");
        q0.b z9 = bVar.z(a10);
        String string = mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_URI);
        if (string != null) {
            Intrinsics.checkNotNullExpressionValue(string, "getString(MediaMetadataC…t.METADATA_KEY_MEDIA_URI)");
            uri = Uri.parse(string);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(this)");
        } else {
            uri = null;
        }
        Intrinsics.checkNotNull(uri);
        q0 f10 = z9.f(uri);
        Intrinsics.checkNotNullExpressionValue(f10, "Factory(dataSourceFactor…teMediaSource(mediaUri!!)");
        return f10;
    }
}
