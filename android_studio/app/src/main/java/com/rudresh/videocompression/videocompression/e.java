package com.rudresh.videocompression.videocompression;

import android.annotation.SuppressLint;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import java.io.File;
import java.io.IOException;

/* compiled from: MediaController.java */
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    public static final String f55263c = "video/avc";

    /* renamed from: d  reason: collision with root package name */
    public static final String f55264d = "audio/mp4a-latm";

    /* renamed from: e  reason: collision with root package name */
    public static final int f55265e = 2500;

    /* renamed from: f  reason: collision with root package name */
    private static volatile e f55266f;

    /* renamed from: a  reason: collision with root package name */
    public String f55267a;

    /* renamed from: b  reason: collision with root package name */
    private l f55268b = new l();

    public static int b(MediaExtractor mediaExtractor, boolean z9) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i4 = 0; i4 < trackCount; i4++) {
            String string = mediaExtractor.getTrackFormat(i4).getString(com.ksyun.media.player.misc.c.f45557a);
            if (z9) {
                if (string.startsWith("audio/")) {
                    return i4;
                }
            } else if (string.startsWith("video/")) {
                return i4;
            }
        }
        return -5;
    }

    public static e c() {
        e eVar = f55266f;
        if (eVar == null) {
            synchronized (e.class) {
                eVar = f55266f;
                if (eVar == null) {
                    eVar = new e();
                    f55266f = eVar;
                }
            }
        }
        return eVar;
    }

    public File a(String str, String str2, QualityPreset qualityPreset) {
        int i4;
        e eVar;
        int i10;
        int i11;
        int i12 = qualityPreset.baseFps;
        int i13 = qualityPreset.baseSide;
        int i14 = qualityPreset.baseBitrate;
        File file = new File(str);
        File file2 = new File(str2);
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        if (file.canRead()) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(str);
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                i4 = parseInt;
            } else {
                i4 = parseInt2;
                parseInt2 = parseInt;
            }
            long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
            int parseInt4 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(20));
            mediaMetadataRetriever.close();
            if (parseInt2 > i4) {
                int i15 = (i13 * i4) / parseInt2;
                if (i15 % 2 != 0) {
                    i15++;
                }
                eVar = this;
                i11 = i15;
                i10 = i13;
            } else {
                int i16 = (i13 * parseInt2) / i4;
                if (i16 % 2 != 0) {
                    i16++;
                }
                eVar = this;
                i10 = i16;
                i11 = i13;
            }
            return eVar.f55268b.b(file, file2, parseInt2, i4, parseInt4, parseInt3, i10, i11, i12, -1, -1L, parseLong, i14);
        }
        return null;
    }
}
