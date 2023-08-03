package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.media.MediaFormat;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.video.ColorInfo;
import com.ksyun.media.player.KSYMediaMeta;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: MediaFormatUtil.java */
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27740a = "exo-pixel-width-height-ratio-float";

    /* renamed from: b  reason: collision with root package name */
    public static final String f27741b = "exo-pcm-encoding-int";

    /* renamed from: c  reason: collision with root package name */
    private static final int f27742c = 1073741824;

    private z() {
    }

    @SuppressLint({"InlinedApi"})
    public static MediaFormat a(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        e(mediaFormat, KSYMediaMeta.IJKM_KEY_BITRATE, format.bitrate);
        e(mediaFormat, "channel-count", format.channelCount);
        c(mediaFormat, format.colorInfo);
        h(mediaFormat, com.ksyun.media.player.misc.c.f45557a, format.sampleMimeType);
        h(mediaFormat, "codecs-string", format.codecs);
        d(mediaFormat, "frame-rate", format.frameRate);
        e(mediaFormat, "width", format.width);
        e(mediaFormat, "height", format.height);
        j(mediaFormat, format.initializationData);
        f(mediaFormat, format.pcmEncoding);
        h(mediaFormat, "language", format.language);
        e(mediaFormat, "max-input-size", format.maxInputSize);
        e(mediaFormat, "sample-rate", format.sampleRate);
        e(mediaFormat, "caption-service-number", format.accessibilityChannel);
        mediaFormat.setInteger("rotation-degrees", format.rotationDegrees);
        int i4 = format.selectionFlags;
        i(mediaFormat, "is-autoselect", i4 & 4);
        i(mediaFormat, "is-default", i4 & 1);
        i(mediaFormat, "is-forced-subtitle", i4 & 2);
        mediaFormat.setInteger("encoder-delay", format.encoderDelay);
        mediaFormat.setInteger("encoder-padding", format.encoderPadding);
        g(mediaFormat, format.pixelWidthHeightRatio);
        return mediaFormat;
    }

    public static void b(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void c(MediaFormat mediaFormat, @Nullable ColorInfo colorInfo) {
        if (colorInfo != null) {
            e(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            e(mediaFormat, "color-standard", colorInfo.colorSpace);
            e(mediaFormat, "color-range", colorInfo.colorRange);
            b(mediaFormat, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static void d(MediaFormat mediaFormat, String str, float f10) {
        if (f10 != -1.0f) {
            mediaFormat.setFloat(str, f10);
        }
    }

    public static void e(MediaFormat mediaFormat, String str, int i4) {
        if (i4 != -1) {
            mediaFormat.setInteger(str, i4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private static void f(MediaFormat mediaFormat, int i4) {
        if (i4 == -1) {
            return;
        }
        e(mediaFormat, f27741b, i4);
        int i10 = 4;
        if (i4 == 2) {
            i10 = 2;
        } else if (i4 == 3) {
            i10 = 3;
        } else if (i4 != 4) {
            return;
        }
        mediaFormat.setInteger("pcm-encoding", i10);
    }

    @SuppressLint({"InlinedApi"})
    private static void g(MediaFormat mediaFormat, float f10) {
        int i4;
        mediaFormat.setFloat(f27740a, f10);
        int i10 = 1073741824;
        if (f10 < 1.0f) {
            i10 = (int) (f10 * 1073741824);
            i4 = 1073741824;
        } else if (f10 > 1.0f) {
            i4 = (int) (1073741824 / f10);
        } else {
            i4 = 1;
            i10 = 1;
        }
        mediaFormat.setInteger("sar-width", i10);
        mediaFormat.setInteger("sar-height", i4);
    }

    public static void h(MediaFormat mediaFormat, String str, @Nullable String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    private static void i(MediaFormat mediaFormat, String str, int i4) {
        mediaFormat.setInteger(str, i4 != 0 ? 1 : 0);
    }

    public static void j(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i4);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(list.get(i4)));
        }
    }
}
