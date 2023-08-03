package com.google.android.exoplayer2.source.mediaparser;

import android.media.MediaFormat;
import com.google.android.exoplayer2.Format;

/* compiled from: MediaParserUtil.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f25011a = "android.media.mediaparser.inBandCryptoInfo";

    /* renamed from: b  reason: collision with root package name */
    public static final String f25012b = "android.media.mediaparser.includeSupplementalData";

    /* renamed from: c  reason: collision with root package name */
    public static final String f25013c = "android.media.mediaparser.eagerlyExposeTrackType";

    /* renamed from: d  reason: collision with root package name */
    public static final String f25014d = "android.media.mediaparser.exposeDummySeekMap";

    /* renamed from: e  reason: collision with root package name */
    public static final String f25015e = "android.media.mediaParser.exposeChunkIndexAsMediaFormat";

    /* renamed from: f  reason: collision with root package name */
    public static final String f25016f = "android.media.mediaParser.overrideInBandCaptionDeclarations";

    /* renamed from: g  reason: collision with root package name */
    public static final String f25017g = "android.media.mediaParser.exposeCaptionFormats";

    /* renamed from: h  reason: collision with root package name */
    public static final String f25018h = "android.media.mediaparser.ignoreTimestampOffset";

    private b() {
    }

    public static MediaFormat a(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(com.ksyun.media.player.misc.c.f45557a, format.sampleMimeType);
        int i4 = format.accessibilityChannel;
        if (i4 != -1) {
            mediaFormat.setInteger("caption-service-number", i4);
        }
        return mediaFormat;
    }
}
