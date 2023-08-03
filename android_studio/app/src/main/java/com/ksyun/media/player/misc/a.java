package com.ksyun.media.player.misc;

import android.annotation.TargetApi;
import android.media.MediaFormat;

/* compiled from: AndroidMediaFormat.java */
/* loaded from: classes3.dex */
public class a implements c {

    /* renamed from: d  reason: collision with root package name */
    private final MediaFormat f45555d;

    public a(MediaFormat mediaFormat) {
        this.f45555d = mediaFormat;
    }

    @Override // com.ksyun.media.player.misc.c
    @TargetApi(16)
    public int getInteger(String str) {
        MediaFormat mediaFormat = this.f45555d;
        if (mediaFormat == null) {
            return 0;
        }
        return mediaFormat.getInteger(str);
    }

    @Override // com.ksyun.media.player.misc.c
    @TargetApi(16)
    public String getString(String str) {
        MediaFormat mediaFormat = this.f45555d;
        if (mediaFormat == null) {
            return null;
        }
        return mediaFormat.getString(str);
    }

    @TargetApi(16)
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getName());
        sb.append('{');
        MediaFormat mediaFormat = this.f45555d;
        if (mediaFormat != null) {
            sb.append(mediaFormat.toString());
        } else {
            sb.append("null");
        }
        sb.append('}');
        return sb.toString();
    }
}
