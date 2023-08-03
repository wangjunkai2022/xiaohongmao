package com.ksyun.media.player.misc;

import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.media.MediaPlayer;

/* compiled from: AndroidTrackInfo.java */
/* loaded from: classes3.dex */
public class b implements ITrackInfo {

    /* renamed from: a  reason: collision with root package name */
    private final MediaPlayer.TrackInfo f45556a;

    private b(MediaPlayer.TrackInfo trackInfo) {
        this.f45556a = trackInfo;
    }

    public static b[] a(MediaPlayer mediaPlayer) {
        return a(mediaPlayer.getTrackInfo());
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    @TargetApi(19)
    public c getFormat() {
        MediaFormat format;
        MediaPlayer.TrackInfo trackInfo = this.f45556a;
        if (trackInfo == null || (format = trackInfo.getFormat()) == null) {
            return null;
        }
        return new a(format);
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    @TargetApi(16)
    public String getInfoInline() {
        MediaPlayer.TrackInfo trackInfo = this.f45556a;
        return trackInfo != null ? trackInfo.toString() : "null";
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    @TargetApi(16)
    public String getLanguage() {
        MediaPlayer.TrackInfo trackInfo = this.f45556a;
        return trackInfo == null ? "und" : trackInfo.getLanguage();
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    public int getTrackIndex() {
        return 0;
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    @TargetApi(16)
    public int getTrackType() {
        MediaPlayer.TrackInfo trackInfo = this.f45556a;
        if (trackInfo == null) {
            return 0;
        }
        return trackInfo.getTrackType();
    }

    @TargetApi(16)
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append('{');
        MediaPlayer.TrackInfo trackInfo = this.f45556a;
        if (trackInfo != null) {
            sb.append(trackInfo.toString());
        } else {
            sb.append("null");
        }
        sb.append('}');
        return sb.toString();
    }

    private static b[] a(MediaPlayer.TrackInfo[] trackInfoArr) {
        if (trackInfoArr == null) {
            return null;
        }
        b[] bVarArr = new b[trackInfoArr.length];
        for (int i4 = 0; i4 < trackInfoArr.length; i4++) {
            bVarArr[i4] = new b(trackInfoArr[i4]);
        }
        return bVarArr;
    }
}
