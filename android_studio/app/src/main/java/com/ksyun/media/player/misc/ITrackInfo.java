package com.ksyun.media.player.misc;

/* loaded from: classes3.dex */
public interface ITrackInfo {
    public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
    public static final int MEDIA_TRACK_TYPE_EXTERNAL_TIMEDTEXT = 100;
    public static final int MEDIA_TRACK_TYPE_METADATA = 5;
    public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
    public static final int MEDIA_TRACK_TYPE_TIMEDTEXT = 3;
    public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
    public static final int MEDIA_TRACK_TYPE_VIDEO = 1;

    c getFormat();

    String getInfoInline();

    String getLanguage();

    int getTrackIndex();

    int getTrackType();
}
