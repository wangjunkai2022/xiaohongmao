package com.ksyun.media.player.util;

import com.ksyun.media.player.KSYMediaPlayer;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
class AudioUtil {
    private static final String TAG = "AudioUtil";

    AudioUtil() {
    }

    public static void onAudioPCMReady(Object obj, ByteBuffer byteBuffer, long j4, int i4, int i10, int i11) {
        KSYMediaPlayer kSYMediaPlayer = (KSYMediaPlayer) ((WeakReference) obj).get();
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer._onAudioPCMReady(byteBuffer, j4, i4, i10, i11);
        }
    }
}
