package com.ksyun.media.streamer.util.audio;

import android.content.Context;
import android.media.AudioManager;

/* compiled from: AudioUtil.java */
/* loaded from: classes3.dex */
public class a {
    public static int a(Context context) {
        return Integer.parseInt(((AudioManager) context.getSystemService("audio")).getProperty("android.media.property.OUTPUT_SAMPLE_RATE"));
    }

    public static int a(Context context, int i4) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (i4 == Integer.parseInt(audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE"))) {
            return Integer.parseInt(audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER"));
        }
        return 1024;
    }
}
