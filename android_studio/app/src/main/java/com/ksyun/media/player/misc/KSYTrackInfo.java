package com.ksyun.media.player.misc;

import android.text.TextUtils;
import com.alipay.sdk.util.i;
import com.ksyun.media.player.KSYMediaMeta;

/* loaded from: classes3.dex */
public class KSYTrackInfo implements ITrackInfo {
    private KSYMediaMeta.KSYStreamMeta mStreamMeta;
    private int mTrackType = 0;
    private int mTrackIndex = -1;

    public KSYTrackInfo(KSYMediaMeta.KSYStreamMeta kSYStreamMeta) {
        this.mStreamMeta = kSYStreamMeta;
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    public c getFormat() {
        return new KSYMediaFormat(this.mStreamMeta);
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    public String getInfoInline() {
        StringBuilder sb = new StringBuilder();
        int i4 = this.mTrackType;
        if (i4 == 1) {
            sb.append("VIDEO");
            sb.append(", ");
            sb.append(this.mStreamMeta.getCodecShortNameInline());
            sb.append(", ");
            sb.append(this.mStreamMeta.getBitrateInline());
            sb.append(", ");
            sb.append(this.mStreamMeta.getResolutionInline());
        } else if (i4 == 2) {
            sb.append("AUDIO");
            sb.append(", ");
            sb.append(this.mStreamMeta.getCodecShortNameInline());
            sb.append(", ");
            sb.append(this.mStreamMeta.getBitrateInline());
            sb.append(", ");
            sb.append(this.mStreamMeta.getSampleRateInline());
        } else if (i4 == 3) {
            sb.append("TIMEDTEXT");
            sb.append(", ");
            sb.append(this.mStreamMeta.getCodecShortNameInline());
            sb.append(",");
            sb.append(this.mStreamMeta.mLanguage);
        } else if (i4 == 4) {
            sb.append("SUBTITLE");
        } else if (i4 != 100) {
            sb.append("UNKNOWN");
        } else {
            sb.append("EXTERNAL_TIMEDTEXT");
            sb.append(", ");
            sb.append(this.mStreamMeta.getCodecShortNameInline());
            sb.append(",");
            sb.append(this.mStreamMeta.mLanguage);
        }
        return sb.toString();
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    public String getLanguage() {
        KSYMediaMeta.KSYStreamMeta kSYStreamMeta = this.mStreamMeta;
        return (kSYStreamMeta == null || TextUtils.isEmpty(kSYStreamMeta.mLanguage)) ? "und" : this.mStreamMeta.mLanguage;
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    public int getTrackIndex() {
        return this.mTrackIndex;
    }

    @Override // com.ksyun.media.player.misc.ITrackInfo
    public int getTrackType() {
        return this.mTrackType;
    }

    public void setMediaMeta(KSYMediaMeta.KSYStreamMeta kSYStreamMeta) {
        this.mStreamMeta = kSYStreamMeta;
    }

    public void setTrackIndex(int i4) {
        this.mTrackIndex = i4;
    }

    public void setTrackType(int i4) {
        this.mTrackType = i4;
    }

    public String toString() {
        return getClass().getSimpleName() + '{' + getInfoInline() + i.f6967d;
    }
}
