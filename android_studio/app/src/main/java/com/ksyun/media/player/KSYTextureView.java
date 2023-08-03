package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.ksyun.media.player.IMediaController;
import com.ksyun.media.player.IMediaPlayer;
import com.ksyun.media.player.KSYMediaPlayer;
import com.ksyun.media.player.misc.KSYQosInfo;
import com.ksyun.media.player.misc.KSYTrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@TargetApi(16)
/* loaded from: classes3.dex */
public class KSYTextureView extends FrameLayout implements TextureView.SurfaceTextureListener, IMediaController.MediaPlayerControl {
    private static final int I = -1;
    private static final int J = 0;
    private static final int K = 1;
    private static final int L = 2;
    private static final int M = 3;
    private static final int N = 4;
    private static final int O = 5;
    private static final int P = 6;
    private static final int Q = 7;

    /* renamed from: c  reason: collision with root package name */
    protected static final int f45299c = 8;
    private boolean A;
    private boolean B;
    private boolean C;
    private int D;
    private KSYMediaPlayer.KSYDecodeMode E;
    private boolean F;
    private String G;
    private long H;
    private IMediaPlayer.OnCompletionListener R;
    private IMediaPlayer.OnPreparedListener S;
    private IMediaPlayer.OnErrorListener T;
    private IMediaPlayer.OnSeekCompleteListener U;
    private IMediaPlayer.OnInfoListener V;
    private IMediaPlayer.OnBufferingUpdateListener W;

    /* renamed from: a  reason: collision with root package name */
    protected MediaInfo f45300a;
    private IMediaPlayer.OnVideoSizeChangedListener aa;
    private IMediaPlayer.OnLogEventListener ab;
    private IMediaPlayer.OnMessageListener ac;
    private IMediaPlayer.OnTimedTextListener ad;

    /* renamed from: b  reason: collision with root package name */
    protected int f45301b;

    /* renamed from: d  reason: collision with root package name */
    IMediaPlayer.OnVideoSizeChangedListener f45302d;

    /* renamed from: e  reason: collision with root package name */
    IMediaPlayer.OnPreparedListener f45303e;

    /* renamed from: f  reason: collision with root package name */
    protected final IMediaPlayer.OnCompletionListener f45304f;

    /* renamed from: g  reason: collision with root package name */
    protected final IMediaPlayer.OnErrorListener f45305g;

    /* renamed from: h  reason: collision with root package name */
    protected final IMediaPlayer.OnBufferingUpdateListener f45306h;

    /* renamed from: i  reason: collision with root package name */
    protected final IMediaPlayer.OnInfoListener f45307i;

    /* renamed from: j  reason: collision with root package name */
    protected final IMediaPlayer.OnSeekCompleteListener f45308j;

    /* renamed from: k  reason: collision with root package name */
    protected final IMediaPlayer.OnLogEventListener f45309k;

    /* renamed from: l  reason: collision with root package name */
    protected final IMediaPlayer.OnMessageListener f45310l;

    /* renamed from: m  reason: collision with root package name */
    protected IMediaPlayer.OnTimedTextListener f45311m;
    public int mCurrentState;

    /* renamed from: n  reason: collision with root package name */
    private a f45312n;

    /* renamed from: o  reason: collision with root package name */
    private IMediaController f45313o;

    /* renamed from: p  reason: collision with root package name */
    private KSYMediaPlayer f45314p;

    /* renamed from: q  reason: collision with root package name */
    private SurfaceTexture f45315q;

    /* renamed from: r  reason: collision with root package name */
    private int f45316r;

    /* renamed from: s  reason: collision with root package name */
    private int f45317s;

    /* renamed from: t  reason: collision with root package name */
    private int f45318t;

    /* renamed from: u  reason: collision with root package name */
    private int f45319u;

    /* renamed from: v  reason: collision with root package name */
    private int f45320v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f45321w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f45322x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f45323y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f45324z;

    public KSYTextureView(Context context) {
        super(context);
        this.f45315q = null;
        this.f45320v = 0;
        this.f45321w = false;
        this.f45322x = true;
        this.f45323y = false;
        this.C = true;
        this.D = 1;
        this.E = KSYMediaPlayer.KSYDecodeMode.KSY_DECODE_MODE_SOFTWARE;
        this.F = false;
        this.G = null;
        this.H = 0L;
        this.mCurrentState = 0;
        this.f45302d = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.ksyun.media.player.KSYTextureView.1
            @Override // com.ksyun.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i4, int i10, int i11, int i12) {
                KSYTextureView.this.f45316r = iMediaPlayer.getVideoWidth();
                KSYTextureView.this.f45317s = iMediaPlayer.getVideoHeight();
                KSYTextureView.this.f45318t = i11;
                KSYTextureView.this.f45319u = i12;
                KSYTextureView kSYTextureView = KSYTextureView.this;
                int i13 = kSYTextureView.mCurrentState;
                boolean z9 = i13 == 3 || i13 == 4;
                if (kSYTextureView.f45312n != null && z9) {
                    KSYTextureView.this.f45312n.a(KSYTextureView.this.f45316r, KSYTextureView.this.f45317s);
                    KSYTextureView.this.f45312n.b(KSYTextureView.this.f45318t, KSYTextureView.this.f45319u);
                    KSYTextureView kSYTextureView2 = KSYTextureView.this;
                    kSYTextureView2.setVideoScalingMode(kSYTextureView2.D);
                }
                if (KSYTextureView.this.aa != null) {
                    KSYTextureView.this.aa.onVideoSizeChanged(iMediaPlayer, i4, i10, i11, i12);
                }
            }
        };
        this.f45303e = new IMediaPlayer.OnPreparedListener() { // from class: com.ksyun.media.player.KSYTextureView.3
            @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) {
                KSYTextureView kSYTextureView = KSYTextureView.this;
                kSYTextureView.f45324z = kSYTextureView.A = kSYTextureView.B = true;
                if (KSYTextureView.this.S != null) {
                    KSYTextureView.this.S.onPrepared(iMediaPlayer);
                }
                if (KSYTextureView.this.f45322x) {
                    KSYTextureView.this.mCurrentState = 3;
                } else {
                    KSYTextureView.this.mCurrentState = 2;
                }
                if (KSYTextureView.this.f45313o != null) {
                    KSYTextureView.this.f45313o.setEnabled(true);
                    if (KSYTextureView.this.f45322x) {
                        KSYTextureView.this.f45313o.onStart();
                    } else {
                        KSYTextureView.this.f45313o.onPause();
                    }
                }
            }
        };
        this.f45304f = new IMediaPlayer.OnCompletionListener() { // from class: com.ksyun.media.player.KSYTextureView.4
            @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                if (KSYTextureView.this.R != null) {
                    KSYTextureView.this.R.onCompletion(iMediaPlayer);
                }
                KSYTextureView kSYTextureView = KSYTextureView.this;
                kSYTextureView.mCurrentState = 8;
                if (kSYTextureView.f45313o != null) {
                    KSYTextureView.this.f45313o.hide();
                }
            }
        };
        this.f45305g = new IMediaPlayer.OnErrorListener() { // from class: com.ksyun.media.player.KSYTextureView.5
            @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i4, int i10) {
                if (KSYTextureView.this.T == null || !KSYTextureView.this.T.onError(iMediaPlayer, i4, i10)) {
                    KSYTextureView kSYTextureView = KSYTextureView.this;
                    kSYTextureView.mCurrentState = -1;
                    if (kSYTextureView.f45313o != null) {
                        KSYTextureView.this.f45313o.hide();
                    }
                    return true;
                }
                return true;
            }
        };
        this.f45306h = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.ksyun.media.player.KSYTextureView.6
            @Override // com.ksyun.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i4) {
                KSYTextureView kSYTextureView = KSYTextureView.this;
                kSYTextureView.f45301b = i4;
                if (kSYTextureView.W != null) {
                    KSYTextureView.this.W.onBufferingUpdate(iMediaPlayer, i4);
                }
            }
        };
        this.f45307i = new IMediaPlayer.OnInfoListener() { // from class: com.ksyun.media.player.KSYTextureView.7
            @Override // com.ksyun.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i4, int i10) {
                if (i4 == 3) {
                    if (KSYTextureView.this.f45312n != null) {
                        KSYTextureView.this.f45312n.a(KSYTextureView.this.f45316r, KSYTextureView.this.f45317s);
                        KSYTextureView.this.f45312n.b(KSYTextureView.this.f45318t, KSYTextureView.this.f45319u);
                    }
                    KSYTextureView kSYTextureView = KSYTextureView.this;
                    kSYTextureView.setVideoScalingMode(kSYTextureView.D);
                    KSYTextureView.this.f45312n.setVisibility(0);
                } else if (i4 == 10001) {
                    if (KSYTextureView.this.f45314p != null && !KSYTextureView.this.C) {
                        KSYTextureView.this.f45314p.setRotateDegree(0);
                    }
                    KSYTextureView kSYTextureView2 = KSYTextureView.this;
                    if (kSYTextureView2.mCurrentState == 5) {
                        kSYTextureView2.setRotateDegree(kSYTextureView2.f45320v);
                    } else {
                        kSYTextureView2.setRotateDegree(i10);
                    }
                } else if (i4 != 50001) {
                    switch (i4) {
                        case IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE /* 41000 */:
                            KSYTextureView.this.C = true;
                            break;
                        case IMediaPlayer.MEDIA_INFO_SOFTWARE_DECODE /* 41001 */:
                            KSYTextureView.this.C = false;
                            if (!TextUtils.isEmpty(KSYTextureView.this.G) && KSYTextureView.this.E != KSYMediaPlayer.KSYDecodeMode.KSY_DECODE_MODE_SOFTWARE && !KSYTextureView.this.F && KSYTextureView.this.f45314p != null) {
                                KSYTextureView.this.F = true;
                                KSYTextureView kSYTextureView3 = KSYTextureView.this;
                                kSYTextureView3.H = kSYTextureView3.f45314p.getCurrentPosition();
                                KSYTextureView.this.f45314p.setDecodeMode(KSYMediaPlayer.KSYDecodeMode.KSY_DECODE_MODE_AUTO);
                                KSYTextureView.this.f45314p.reload(KSYTextureView.this.G, true);
                                break;
                            }
                            break;
                    }
                } else {
                    KSYTextureView.this.f45312n.setVisibility(4);
                    KSYTextureView kSYTextureView4 = KSYTextureView.this;
                    kSYTextureView4.f45324z = kSYTextureView4.A = kSYTextureView4.B = true;
                    KSYTextureView kSYTextureView5 = KSYTextureView.this;
                    kSYTextureView5.f45301b = 0;
                    if (kSYTextureView5.f45322x) {
                        KSYTextureView.this.mCurrentState = 3;
                    } else {
                        KSYTextureView.this.mCurrentState = 6;
                    }
                    if (KSYTextureView.this.f45313o != null) {
                        KSYTextureView.this.f45313o.setEnabled(true);
                        if (KSYTextureView.this.f45322x) {
                            KSYTextureView.this.f45313o.onStart();
                        } else {
                            KSYTextureView.this.f45313o.onPause();
                        }
                    }
                    if (KSYTextureView.this.F && KSYTextureView.this.f45314p != null && KSYTextureView.this.H > 0) {
                        KSYTextureView.this.f45314p.seekTo(KSYTextureView.this.H, true);
                    }
                }
                if (KSYTextureView.this.V != null) {
                    KSYTextureView.this.V.onInfo(iMediaPlayer, i4, i10);
                }
                return true;
            }
        };
        this.f45308j = new IMediaPlayer.OnSeekCompleteListener() { // from class: com.ksyun.media.player.KSYTextureView.8
            @Override // com.ksyun.media.player.IMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                if (KSYTextureView.this.U != null) {
                    KSYTextureView.this.U.onSeekComplete(iMediaPlayer);
                }
            }
        };
        this.f45309k = new IMediaPlayer.OnLogEventListener() { // from class: com.ksyun.media.player.KSYTextureView.9
            @Override // com.ksyun.media.player.IMediaPlayer.OnLogEventListener
            public void onLogEvent(IMediaPlayer iMediaPlayer, String str) {
                if (KSYTextureView.this.ab != null) {
                    KSYTextureView.this.ab.onLogEvent(iMediaPlayer, str);
                }
            }
        };
        this.f45310l = new IMediaPlayer.OnMessageListener() { // from class: com.ksyun.media.player.KSYTextureView.10
            @Override // com.ksyun.media.player.IMediaPlayer.OnMessageListener
            public void onMessage(IMediaPlayer iMediaPlayer, Bundle bundle) {
                if (KSYTextureView.this.ac != null) {
                    KSYTextureView.this.ac.onMessage(iMediaPlayer, bundle);
                }
            }
        };
        this.f45311m = new IMediaPlayer.OnTimedTextListener() { // from class: com.ksyun.media.player.KSYTextureView.2
            @Override // com.ksyun.media.player.IMediaPlayer.OnTimedTextListener
            public void onTimedText(IMediaPlayer iMediaPlayer, String str) {
                if (KSYTextureView.this.ad != null) {
                    KSYTextureView.this.ad.onTimedText(iMediaPlayer, str);
                }
            }
        };
        a(context);
        b(context);
    }

    public void addTimedTextSource(String str) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.addTimedTextSource(str);
        }
    }

    public void addVideoRawBuffer(byte[] bArr) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.addVideoRawBuffer(bArr);
        }
    }

    public int bufferEmptyCount() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.bufferEmptyCount();
        }
        return 0;
    }

    public float bufferEmptyDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.bufferEmptyDuration();
        }
        return 0.0f;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return true;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return true;
    }

    public void deselectTrack(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.deselectTrack(i4);
        }
    }

    public long getAudioCachedBytes() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioCachedBytes();
        }
        return 0L;
    }

    public long getAudioCachedDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioCachedDuration();
        }
        return 0L;
    }

    public long getAudioCachedPackets() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioCachedPackets();
        }
        return 0L;
    }

    public int getAudioSessionId() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioSessionId();
        }
        return -1;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f45314p != null) {
            return this.f45301b;
        }
        return 0;
    }

    public float getBufferTimeMax() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getBufferTimeMax();
        }
        return 0.0f;
    }

    public String getClientIP() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.getClientIP();
            return "N/A";
        }
        return "N/A";
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public long getCurrentPosition() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    public long getCurrentPts() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getCurrentPts();
        }
        return 0L;
    }

    public String getDataSource() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDataSource();
        }
        return null;
    }

    public long getDecodedDataSize() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDecodedDataSize();
        }
        return 0L;
    }

    public long getDownloadDataSize() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDownloadDataSize();
        }
        return 0L;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public long getDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDuration();
        }
        return 0L;
    }

    public String getLocalDnsIP() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.getLocalDnsIP();
            return "N/A";
        }
        return "N/A";
    }

    public MediaInfo getMediaInfo() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            if (this.f45300a == null) {
                this.f45300a = kSYMediaPlayer.getMediaInfo();
            }
            return this.f45300a;
        }
        this.f45300a = null;
        return null;
    }

    public Bundle getMediaMeta() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getMediaMeta();
        }
        return null;
    }

    public KSYMediaPlayer getMediaPlayer() {
        return this.f45314p;
    }

    public Bitmap getScreenShot() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return a(kSYMediaPlayer);
        }
        return null;
    }

    public int getSelectedTrack(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getSelectedTrack(i4);
        }
        return 0;
    }

    public String getServerAddress() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        return kSYMediaPlayer != null ? kSYMediaPlayer.getServerAddress() : "N/A";
    }

    public float getSpeed() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getSpeed();
        }
        return 1.0f;
    }

    public KSYQosInfo getStreamQosInfo() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getStreamQosInfo();
        }
        return null;
    }

    public long getStreamStartTime() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getStreamStartTime();
        }
        return 0L;
    }

    public KSYTrackInfo[] getTrackInfo() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getTrackInfo();
        }
        return null;
    }

    public String getVersion() {
        return this.f45314p != null ? KSYMediaPlayer.getVersion() : "N/A";
    }

    public long getVideoCachedBytes() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoCachedBytes();
        }
        return 0L;
    }

    public long getVideoCachedDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoCachedDuration();
        }
        return 0L;
    }

    public long getVideoCachedPackets() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoCachedPackets();
        }
        return 0L;
    }

    public float getVideoDecodeFramesPerSecond() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoDecodeFramesPerSecond();
        }
        return 0.0f;
    }

    public int getVideoDecoder() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoDecoder();
        }
        return 0;
    }

    public int getVideoHeight() {
        return this.f45317s;
    }

    public float getVideoOutputFramesPerSecond() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoOutputFramesPerSecond();
        }
        return 0.0f;
    }

    public int getVideoSarDen() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoSarDen();
        }
        return 0;
    }

    public int getVideoSarNum() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoSarNum();
        }
        return 0;
    }

    public float getVideoScaleRatio() {
        a aVar = this.f45312n;
        if (aVar != null) {
            return aVar.a();
        }
        return 1.0f;
    }

    public int getVideoWidth() {
        return this.f45316r;
    }

    public boolean isComeBackFromShare() {
        return this.f45323y;
    }

    public boolean isLooping() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.isLooping();
        }
        return false;
    }

    public boolean isPlayable() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.isPlayable();
        }
        return false;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public boolean isPlaying() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.isPlaying();
        }
        return false;
    }

    public void moveVideo(float f10, float f11) {
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.b(f10, f11);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        a aVar;
        super.onConfigurationChanged(configuration);
        if (getResources().getConfiguration().orientation == 2) {
            a aVar2 = this.f45312n;
            if (aVar2 != null) {
                aVar2.b(false);
            }
        } else if (getResources().getConfiguration().orientation != 1 || (aVar = this.f45312n) == null) {
        } else {
            aVar.b(true);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        boolean z9 = (i4 == 4 || i4 == 24 || i4 == 25 || i4 == 164 || i4 == 82 || i4 == 5 || i4 == 6) ? false : true;
        if (b() && z9 && this.f45313o != null) {
            if (i4 == 79 || i4 == 85) {
                if (this.f45314p.isPlaying()) {
                    pause();
                    this.f45313o.show();
                } else {
                    start();
                    this.f45313o.hide();
                }
                return true;
            } else if (i4 == 126) {
                if (!this.f45314p.isPlaying()) {
                    start();
                    this.f45313o.hide();
                }
                return true;
            } else if (i4 != 86 && i4 != 127) {
                c();
            } else {
                if (this.f45314p.isPlaying()) {
                    pause();
                    this.f45313o.show();
                }
                return true;
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        if (this.f45316r != 0 && this.f45317s != 0) {
            if (this.f45312n == null) {
                super.onMeasure(i4, i10);
                return;
            }
            measureChildren(i4, i10);
            int mode = View.MeasureSpec.getMode(i4);
            int size = View.MeasureSpec.getSize(i4);
            int mode2 = View.MeasureSpec.getMode(i10);
            int size2 = View.MeasureSpec.getSize(i10);
            if (mode != 1073741824 || mode2 != 1073741824) {
                if (mode == 1073741824) {
                    int c10 = this.f45312n.c();
                    if ((this.f45320v / 90) % 2 != 0) {
                        c10 = this.f45312n.b();
                    }
                    if (c10 <= size2) {
                        size2 = c10;
                    }
                } else if (mode2 == 1073741824) {
                    int b10 = this.f45312n.b();
                    if ((this.f45320v / 90) % 2 != 0) {
                        b10 = this.f45312n.c();
                    }
                    if (b10 <= size) {
                        size = b10;
                    }
                } else {
                    int b11 = this.f45312n.b();
                    int c11 = this.f45312n.c();
                    if ((this.f45320v / 90) % 2 != 0) {
                        c11 = this.f45312n.b();
                        b11 = this.f45312n.c();
                    }
                    if (b11 <= size) {
                        size = b11;
                    }
                    if (c11 <= size2) {
                        size2 = c11;
                    }
                }
            }
            setMeasuredDimension(size, size2);
            return;
        }
        super.onMeasure(i4, i10);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i10) {
        if (this.f45315q != null && isComeBackFromShare()) {
            this.f45315q.release();
            this.f45315q = surfaceTexture;
        }
        if (this.f45315q == null) {
            this.f45315q = surfaceTexture;
        }
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setSurface(new Surface(this.f45315q));
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        IMediaController iMediaController = this.f45313o;
        if (iMediaController != null) {
            iMediaController.hide();
        }
        return this.f45315q == null;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i10) {
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.b(this.D);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!b() || this.f45313o == null) {
            return false;
        }
        c();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!b() || this.f45313o == null) {
            return false;
        }
        c();
        return false;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public void pause() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.pause();
        }
        this.f45321w = true;
        this.mCurrentState = 4;
        IMediaController iMediaController = this.f45313o;
        if (iMediaController != null) {
            iMediaController.onPause();
        }
    }

    public void prepareAsync() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.prepareAsync();
            this.mCurrentState = 1;
        }
    }

    public void release() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.release();
            this.f45314p = null;
        }
        this.mCurrentState = 0;
        this.f45315q = null;
    }

    public void reload(String str, boolean z9) {
        this.f45323y = false;
        this.B = false;
        this.A = false;
        this.f45324z = false;
        this.f45321w = false;
        this.f45301b = 0;
        this.mCurrentState = 5;
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.reload(str, z9);
        }
        IMediaController iMediaController = this.f45313o;
        if (iMediaController != null) {
            iMediaController.setEnabled(false);
        }
    }

    public void reset() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.reset();
            d();
        }
    }

    public void runInBackground(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null && !this.f45321w && !z9) {
            kSYMediaPlayer.pause();
        }
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.setVisibility(4);
        }
    }

    public void runInForeground() {
        SurfaceTexture surfaceTexture;
        a aVar = this.f45312n;
        if (aVar != null && !aVar.isAvailable() && (surfaceTexture = this.f45315q) != null) {
            this.f45312n.setSurfaceTexture(surfaceTexture);
        }
        setComeBackFromShare(false);
        a aVar2 = this.f45312n;
        if (aVar2 != null) {
            aVar2.setVisibility(0);
        }
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public void seekTo(long j4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.seekTo(j4);
        }
    }

    public void selectTrack(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.selectTrack(i4);
        }
    }

    public void setBufferSize(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setBufferSize(i4);
        }
    }

    public void setBufferTimeMax(float f10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setBufferTimeMax(f10);
        }
    }

    public void setComeBackFromShare(boolean z9) {
        this.f45323y = z9;
    }

    public void setDataSource(Context context, Uri uri) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(context, uri);
        }
    }

    public void setDecodeMode(KSYMediaPlayer.KSYDecodeMode kSYDecodeMode) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDecodeMode(kSYDecodeMode);
            this.E = kSYDecodeMode;
        }
    }

    public void setDeinterlaceMode(KSYMediaPlayer.KSYDeinterlaceMode kSYDeinterlaceMode) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDeinterlaceMode(kSYDeinterlaceMode);
        }
    }

    public void setLooping(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setLooping(z9);
        }
    }

    public void setMediaController(IMediaController iMediaController) {
        IMediaController iMediaController2 = this.f45313o;
        if (iMediaController2 != null) {
            iMediaController2.hide();
        }
        this.f45313o = iMediaController;
        a();
    }

    public void setMirror(boolean z9) {
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.a(z9);
        }
    }

    public void setOnAudioPCMAvailableListener(KSYMediaPlayer.OnAudioPCMListener onAudioPCMListener) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setOnAudioPCMAvailableListener(onAudioPCMListener);
        }
    }

    public void setOnBufferingUpdateListener(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.W = onBufferingUpdateListener;
    }

    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.R = onCompletionListener;
    }

    public void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        this.T = onErrorListener;
    }

    public void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.V = onInfoListener;
    }

    public void setOnLogEventListener(IMediaPlayer.OnLogEventListener onLogEventListener) {
        this.ab = onLogEventListener;
    }

    public void setOnMessageListener(IMediaPlayer.OnMessageListener onMessageListener) {
        this.ac = onMessageListener;
    }

    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.S = onPreparedListener;
    }

    public void setOnSeekCompleteListener(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.U = onSeekCompleteListener;
    }

    public void setOnTimedTextListener(IMediaPlayer.OnTimedTextListener onTimedTextListener) {
        this.ad = onTimedTextListener;
    }

    public void setOnVideoSizeChangedListener(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.aa = onVideoSizeChangedListener;
    }

    public void setOption(int i4, String str, String str2) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setOption(i4, str, str2);
        }
    }

    public void setPlayableRanges(long j4, long j10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setPlayableRanges(j4, j10);
        }
    }

    public void setPlayerMute(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setPlayerMute(i4);
        }
    }

    public boolean setRotateDegree(int i4) {
        if (i4 % 90 != 0) {
            return false;
        }
        this.f45320v = i4;
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.a(-i4);
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public void setRotation(float f10) {
        setRotateDegree((int) f10);
    }

    public void setScreenOnWhilePlaying(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setScreenOnWhilePlaying(z9);
        }
    }

    public void setSpeed(float f10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setSpeed(f10);
        }
    }

    public void setTimeout(int i4, int i10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setTimeout(i4, i10);
        }
    }

    public void setVideoOffset(float f10, float f11) {
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.a(f10, f11);
        }
    }

    public void setVideoRawDataListener(KSYMediaPlayer.OnVideoRawDataListener onVideoRawDataListener) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVideoRawDataListener(onVideoRawDataListener);
        }
    }

    public void setVideoRenderingState(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVideoRenderingState(i4);
        }
    }

    public void setVideoScaleRatio(float f10, float f11, float f12) {
        a aVar = this.f45312n;
        if (aVar == null || f10 < 0.25f || f10 > 100.0f) {
            return;
        }
        aVar.a(f10, f11, f12);
    }

    public void setVideoScalingMode(int i4) {
        a aVar = this.f45312n;
        if (aVar != null) {
            this.D = i4;
            aVar.b(i4);
        }
    }

    public void setVolume(float f10, float f11) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVolume(f10, f11);
        }
    }

    public void setWakeMode(Context context, int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setWakeMode(context, i4);
        }
    }

    public void shouldAutoPlay(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.shouldAutoPlay(z9);
            this.f45322x = z9;
        }
    }

    public void softReset() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.softReset();
            d();
        }
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public void start() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.start();
        }
        this.f45321w = false;
        this.mCurrentState = 3;
        IMediaController iMediaController = this.f45313o;
        if (iMediaController != null) {
            iMediaController.onStart();
        }
    }

    public void stop() {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.stop();
        }
        this.mCurrentState = 7;
        this.f45321w = false;
        this.f45324z = false;
        this.B = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends TextureView implements TextureView.SurfaceTextureListener {

        /* renamed from: b  reason: collision with root package name */
        public static final int f45335b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static final int f45336c = 2;

        /* renamed from: d  reason: collision with root package name */
        public static final int f45337d = 3;
        private float A;
        private float B;
        private float C;
        private float D;
        private float E;
        private float F;
        private int G;

        /* renamed from: a  reason: collision with root package name */
        boolean f45338a;

        /* renamed from: f  reason: collision with root package name */
        private TextureView.SurfaceTextureListener f45340f;

        /* renamed from: g  reason: collision with root package name */
        private int f45341g;

        /* renamed from: h  reason: collision with root package name */
        private int f45342h;

        /* renamed from: i  reason: collision with root package name */
        private int f45343i;

        /* renamed from: j  reason: collision with root package name */
        private int f45344j;

        /* renamed from: k  reason: collision with root package name */
        private int f45345k;

        /* renamed from: l  reason: collision with root package name */
        private int f45346l;

        /* renamed from: m  reason: collision with root package name */
        private int f45347m;

        /* renamed from: n  reason: collision with root package name */
        private int f45348n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f45349o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f45350p;

        /* renamed from: q  reason: collision with root package name */
        private float f45351q;

        /* renamed from: r  reason: collision with root package name */
        private float f45352r;

        /* renamed from: s  reason: collision with root package name */
        private Matrix f45353s;

        /* renamed from: t  reason: collision with root package name */
        private int f45354t;

        /* renamed from: u  reason: collision with root package name */
        private int f45355u;

        /* renamed from: v  reason: collision with root package name */
        private float f45356v;

        /* renamed from: w  reason: collision with root package name */
        private float f45357w;

        /* renamed from: x  reason: collision with root package name */
        private float f45358x;

        /* renamed from: y  reason: collision with root package name */
        private float f45359y;

        /* renamed from: z  reason: collision with root package name */
        private float f45360z;

        public a(Context context) {
            super(context);
            this.f45347m = 1;
            this.f45349o = false;
            this.f45338a = false;
            this.f45351q = 0.0f;
            this.f45352r = 0.0f;
            this.f45353s = new Matrix();
            this.D = 1.0f;
            this.G = 1;
            super.setSurfaceTextureListener(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00d6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void c(int r11, int r12) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.KSYTextureView.a.c(int, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x00c8, code lost:
            if ((r8 + r5) < r7) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00f2, code lost:
            if (r5 < r7) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x011b, code lost:
            if (r5 < r7) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x011d, code lost:
            r5 = r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0149, code lost:
            if ((r8 + r5) < r7) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x014b, code lost:
            r5 = r7 - r8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void d() {
            /*
                Method dump skipped, instructions count: 346
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.KSYTextureView.a.d():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00d2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void e() {
            /*
                Method dump skipped, instructions count: 235
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.player.KSYTextureView.a.e():void");
        }

        public void a(int i4, int i10) {
            this.f45341g = i4;
            this.f45342h = i10;
        }

        public void b(int i4, int i10) {
            this.f45343i = i4;
            this.f45344j = i10;
        }

        @Override // android.view.View
        protected void onMeasure(int i4, int i10) {
            d(i4, i10);
            setMeasuredDimension(i4, i10);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i10) {
            TextureView.SurfaceTextureListener surfaceTextureListener = this.f45340f;
            if (surfaceTextureListener != null) {
                surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i4, i10);
            }
            requestLayout();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            TextureView.SurfaceTextureListener surfaceTextureListener = this.f45340f;
            if (surfaceTextureListener != null) {
                return surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
            }
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i10) {
            TextureView.SurfaceTextureListener surfaceTextureListener = this.f45340f;
            if (surfaceTextureListener != null) {
                surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i4, i10);
            }
            requestLayout();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            TextureView.SurfaceTextureListener surfaceTextureListener = this.f45340f;
            if (surfaceTextureListener != null) {
                surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
            }
        }

        @Override // android.view.TextureView
        public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
            this.f45340f = surfaceTextureListener;
        }

        public void a(boolean z9) {
            this.f45349o = z9;
            setScaleX(z9 ? -1.0f : 1.0f);
        }

        public void b(int i4) {
            this.f45347m = i4;
            this.f45338a = false;
            this.G = 1;
            requestLayout();
        }

        public void a(int i4) {
            this.f45348n = i4;
            this.G = 1;
            requestLayout();
        }

        public void b(boolean z9) {
            this.f45350p = z9;
            this.G = 1;
            requestLayout();
        }

        public void a(float f10, float f11, float f12) {
            if (f10 < 0.25d || f10 > 100.0f) {
                return;
            }
            if (this.f45347m == 1) {
                float f13 = this.f45351q;
                if (f13 > 0.0f || f13 < 0.0f) {
                    return;
                }
                float f14 = this.f45352r;
                if (f14 > 0.0f || f14 < 0.0f) {
                    return;
                }
            }
            this.E = f10 / this.D;
            this.D = f10;
            this.f45356v = f11;
            this.f45357w = f12;
            this.G = 2;
            d();
            requestLayout();
        }

        void b(float f10, float f11) {
            if (this.f45347m == 1) {
                float f12 = this.f45351q;
                if (f12 > 0.0f || f12 < 0.0f) {
                    return;
                }
                float f13 = this.f45352r;
                if (f13 > 0.0f || f13 < 0.0f) {
                    return;
                }
            }
            this.f45358x = f10;
            this.f45359y = f11;
            this.G = 3;
            e();
            requestLayout();
        }

        public a(KSYTextureView kSYTextureView, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public a(Context context, AttributeSet attributeSet, int i4) {
            super(context, attributeSet, i4);
            this.f45347m = 1;
            this.f45349o = false;
            this.f45338a = false;
            this.f45351q = 0.0f;
            this.f45352r = 0.0f;
            this.f45353s = new Matrix();
            this.D = 1.0f;
            this.G = 1;
            super.setSurfaceTextureListener(this);
        }

        public float a() {
            return this.D;
        }

        public int b() {
            return this.f45345k;
        }

        void a(float f10, float f11) {
            this.f45351q = f10;
            this.f45352r = f11;
            this.G = 1;
            requestLayout();
        }

        private void d(int i4, int i10) {
            if (this.f45341g == 0 || this.f45342h == 0) {
                return;
            }
            int mode = View.MeasureSpec.getMode(i4);
            int size = View.MeasureSpec.getSize(i4);
            int mode2 = View.MeasureSpec.getMode(i10);
            int size2 = View.MeasureSpec.getSize(i10);
            this.f45354t = size;
            this.f45355u = size2;
            if (this.G == 1) {
                c(mode, mode2);
            }
            setTransform(this.f45353s);
        }

        public int c() {
            return this.f45346l;
        }
    }

    public void seekTo(long j4, boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.seekTo(j4, z9);
        }
    }

    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(context, uri, map);
        }
    }

    public void setOption(int i4, String str, long j4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setOption(i4, str, j4);
        }
    }

    private void b(Context context) {
        KSYMediaPlayer build = new KSYMediaPlayer.Builder(context).build();
        this.f45314p = build;
        build.setOnPreparedListener(this.f45303e);
        this.f45314p.setOnVideoSizeChangedListener(this.f45302d);
        this.f45314p.setOnCompletionListener(this.f45304f);
        this.f45314p.setOnErrorListener(this.f45305g);
        this.f45314p.setOnBufferingUpdateListener(this.f45306h);
        this.f45314p.setOnInfoListener(this.f45307i);
        this.f45314p.setOnSeekCompleteListener(this.f45308j);
        this.f45314p.setOnLogEventListener(this.f45309k);
        this.f45314p.setOnMessageListener(this.f45310l);
        this.f45314p.setOnTimedTextListener(this.f45311m);
    }

    private void c() {
        if (this.f45313o.isShowing()) {
            this.f45313o.hide();
        } else {
            this.f45313o.show();
        }
    }

    private void d() {
        KSYMediaPlayer kSYMediaPlayer;
        this.f45320v = 0;
        this.f45300a = null;
        this.f45321w = false;
        this.f45323y = false;
        this.D = 1;
        this.f45319u = 0;
        this.f45318t = 0;
        this.f45317s = 0;
        this.f45316r = 0;
        this.B = false;
        this.A = false;
        this.f45324z = false;
        this.f45322x = true;
        this.mCurrentState = 0;
        a aVar = this.f45312n;
        if (aVar != null) {
            aVar.a(0.0f, 0.0f);
            this.f45312n.a(0, 0);
            this.f45312n.b(0, 0);
        }
        if (this.f45315q != null && (kSYMediaPlayer = this.f45314p) != null) {
            kSYMediaPlayer.setSurface(new Surface(this.f45315q));
        }
        IMediaController iMediaController = this.f45313o;
        if (iMediaController != null) {
            iMediaController.setEnabled(false);
        }
    }

    private void a(Context context) {
        a aVar;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        a aVar2 = new a(context);
        this.f45312n = aVar2;
        aVar2.setLayoutParams(layoutParams);
        this.f45312n.setSurfaceTextureListener(this);
        addView(this.f45312n);
        if (getResources().getConfiguration().orientation == 2) {
            a aVar3 = this.f45312n;
            if (aVar3 != null) {
                aVar3.b(false);
            }
        } else if (getResources().getConfiguration().orientation == 1 && (aVar = this.f45312n) != null) {
            aVar.b(true);
        }
        this.f45319u = 0;
        this.f45318t = 0;
        this.f45317s = 0;
        this.f45316r = 0;
        this.B = false;
        this.A = false;
        this.f45324z = false;
        this.f45322x = true;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    public void setDataSource(String str) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(str);
        }
    }

    public void setDataSource(String str, String str2) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(str);
            this.G = str2;
            this.F = false;
        }
    }

    public void reload(String str, boolean z9, KSYMediaPlayer.KSYReloadMode kSYReloadMode) {
        this.f45323y = false;
        this.B = false;
        this.A = false;
        this.f45324z = false;
        this.f45321w = false;
        this.f45301b = 0;
        this.mCurrentState = 5;
        IMediaController iMediaController = this.f45313o;
        if (iMediaController != null) {
            iMediaController.setEnabled(false);
        }
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.reload(str, z9, kSYReloadMode);
        }
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(str, map);
        }
    }

    @TargetApi(13)
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(fileDescriptor);
        }
    }

    private boolean b() {
        return this.f45314p != null;
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j4, long j10) throws IOException, IllegalArgumentException, IllegalStateException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(fileDescriptor, j4, j10);
        }
    }

    public void setDataSource(List<String> list, Map<String, String> map) throws IOException, IllegalArgumentException, IllegalStateException {
        KSYMediaPlayer kSYMediaPlayer = this.f45314p;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(list, map);
        }
    }

    private void a() {
        IMediaController iMediaController;
        if (this.f45314p == null || (iMediaController = this.f45313o) == null) {
            return;
        }
        iMediaController.setMediaPlayer(this);
        this.f45313o.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
        this.f45313o.setEnabled(false);
        this.f45313o.hide();
    }

    public KSYTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KSYTextureView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f45315q = null;
        this.f45320v = 0;
        this.f45321w = false;
        this.f45322x = true;
        this.f45323y = false;
        this.C = true;
        this.D = 1;
        this.E = KSYMediaPlayer.KSYDecodeMode.KSY_DECODE_MODE_SOFTWARE;
        this.F = false;
        this.G = null;
        this.H = 0L;
        this.mCurrentState = 0;
        this.f45302d = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.ksyun.media.player.KSYTextureView.1
            @Override // com.ksyun.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i42, int i10, int i11, int i12) {
                KSYTextureView.this.f45316r = iMediaPlayer.getVideoWidth();
                KSYTextureView.this.f45317s = iMediaPlayer.getVideoHeight();
                KSYTextureView.this.f45318t = i11;
                KSYTextureView.this.f45319u = i12;
                KSYTextureView kSYTextureView = KSYTextureView.this;
                int i13 = kSYTextureView.mCurrentState;
                boolean z9 = i13 == 3 || i13 == 4;
                if (kSYTextureView.f45312n != null && z9) {
                    KSYTextureView.this.f45312n.a(KSYTextureView.this.f45316r, KSYTextureView.this.f45317s);
                    KSYTextureView.this.f45312n.b(KSYTextureView.this.f45318t, KSYTextureView.this.f45319u);
                    KSYTextureView kSYTextureView2 = KSYTextureView.this;
                    kSYTextureView2.setVideoScalingMode(kSYTextureView2.D);
                }
                if (KSYTextureView.this.aa != null) {
                    KSYTextureView.this.aa.onVideoSizeChanged(iMediaPlayer, i42, i10, i11, i12);
                }
            }
        };
        this.f45303e = new IMediaPlayer.OnPreparedListener() { // from class: com.ksyun.media.player.KSYTextureView.3
            @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) {
                KSYTextureView kSYTextureView = KSYTextureView.this;
                kSYTextureView.f45324z = kSYTextureView.A = kSYTextureView.B = true;
                if (KSYTextureView.this.S != null) {
                    KSYTextureView.this.S.onPrepared(iMediaPlayer);
                }
                if (KSYTextureView.this.f45322x) {
                    KSYTextureView.this.mCurrentState = 3;
                } else {
                    KSYTextureView.this.mCurrentState = 2;
                }
                if (KSYTextureView.this.f45313o != null) {
                    KSYTextureView.this.f45313o.setEnabled(true);
                    if (KSYTextureView.this.f45322x) {
                        KSYTextureView.this.f45313o.onStart();
                    } else {
                        KSYTextureView.this.f45313o.onPause();
                    }
                }
            }
        };
        this.f45304f = new IMediaPlayer.OnCompletionListener() { // from class: com.ksyun.media.player.KSYTextureView.4
            @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                if (KSYTextureView.this.R != null) {
                    KSYTextureView.this.R.onCompletion(iMediaPlayer);
                }
                KSYTextureView kSYTextureView = KSYTextureView.this;
                kSYTextureView.mCurrentState = 8;
                if (kSYTextureView.f45313o != null) {
                    KSYTextureView.this.f45313o.hide();
                }
            }
        };
        this.f45305g = new IMediaPlayer.OnErrorListener() { // from class: com.ksyun.media.player.KSYTextureView.5
            @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i42, int i10) {
                if (KSYTextureView.this.T == null || !KSYTextureView.this.T.onError(iMediaPlayer, i42, i10)) {
                    KSYTextureView kSYTextureView = KSYTextureView.this;
                    kSYTextureView.mCurrentState = -1;
                    if (kSYTextureView.f45313o != null) {
                        KSYTextureView.this.f45313o.hide();
                    }
                    return true;
                }
                return true;
            }
        };
        this.f45306h = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.ksyun.media.player.KSYTextureView.6
            @Override // com.ksyun.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i42) {
                KSYTextureView kSYTextureView = KSYTextureView.this;
                kSYTextureView.f45301b = i42;
                if (kSYTextureView.W != null) {
                    KSYTextureView.this.W.onBufferingUpdate(iMediaPlayer, i42);
                }
            }
        };
        this.f45307i = new IMediaPlayer.OnInfoListener() { // from class: com.ksyun.media.player.KSYTextureView.7
            @Override // com.ksyun.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i42, int i10) {
                if (i42 == 3) {
                    if (KSYTextureView.this.f45312n != null) {
                        KSYTextureView.this.f45312n.a(KSYTextureView.this.f45316r, KSYTextureView.this.f45317s);
                        KSYTextureView.this.f45312n.b(KSYTextureView.this.f45318t, KSYTextureView.this.f45319u);
                    }
                    KSYTextureView kSYTextureView = KSYTextureView.this;
                    kSYTextureView.setVideoScalingMode(kSYTextureView.D);
                    KSYTextureView.this.f45312n.setVisibility(0);
                } else if (i42 == 10001) {
                    if (KSYTextureView.this.f45314p != null && !KSYTextureView.this.C) {
                        KSYTextureView.this.f45314p.setRotateDegree(0);
                    }
                    KSYTextureView kSYTextureView2 = KSYTextureView.this;
                    if (kSYTextureView2.mCurrentState == 5) {
                        kSYTextureView2.setRotateDegree(kSYTextureView2.f45320v);
                    } else {
                        kSYTextureView2.setRotateDegree(i10);
                    }
                } else if (i42 != 50001) {
                    switch (i42) {
                        case IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE /* 41000 */:
                            KSYTextureView.this.C = true;
                            break;
                        case IMediaPlayer.MEDIA_INFO_SOFTWARE_DECODE /* 41001 */:
                            KSYTextureView.this.C = false;
                            if (!TextUtils.isEmpty(KSYTextureView.this.G) && KSYTextureView.this.E != KSYMediaPlayer.KSYDecodeMode.KSY_DECODE_MODE_SOFTWARE && !KSYTextureView.this.F && KSYTextureView.this.f45314p != null) {
                                KSYTextureView.this.F = true;
                                KSYTextureView kSYTextureView3 = KSYTextureView.this;
                                kSYTextureView3.H = kSYTextureView3.f45314p.getCurrentPosition();
                                KSYTextureView.this.f45314p.setDecodeMode(KSYMediaPlayer.KSYDecodeMode.KSY_DECODE_MODE_AUTO);
                                KSYTextureView.this.f45314p.reload(KSYTextureView.this.G, true);
                                break;
                            }
                            break;
                    }
                } else {
                    KSYTextureView.this.f45312n.setVisibility(4);
                    KSYTextureView kSYTextureView4 = KSYTextureView.this;
                    kSYTextureView4.f45324z = kSYTextureView4.A = kSYTextureView4.B = true;
                    KSYTextureView kSYTextureView5 = KSYTextureView.this;
                    kSYTextureView5.f45301b = 0;
                    if (kSYTextureView5.f45322x) {
                        KSYTextureView.this.mCurrentState = 3;
                    } else {
                        KSYTextureView.this.mCurrentState = 6;
                    }
                    if (KSYTextureView.this.f45313o != null) {
                        KSYTextureView.this.f45313o.setEnabled(true);
                        if (KSYTextureView.this.f45322x) {
                            KSYTextureView.this.f45313o.onStart();
                        } else {
                            KSYTextureView.this.f45313o.onPause();
                        }
                    }
                    if (KSYTextureView.this.F && KSYTextureView.this.f45314p != null && KSYTextureView.this.H > 0) {
                        KSYTextureView.this.f45314p.seekTo(KSYTextureView.this.H, true);
                    }
                }
                if (KSYTextureView.this.V != null) {
                    KSYTextureView.this.V.onInfo(iMediaPlayer, i42, i10);
                }
                return true;
            }
        };
        this.f45308j = new IMediaPlayer.OnSeekCompleteListener() { // from class: com.ksyun.media.player.KSYTextureView.8
            @Override // com.ksyun.media.player.IMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                if (KSYTextureView.this.U != null) {
                    KSYTextureView.this.U.onSeekComplete(iMediaPlayer);
                }
            }
        };
        this.f45309k = new IMediaPlayer.OnLogEventListener() { // from class: com.ksyun.media.player.KSYTextureView.9
            @Override // com.ksyun.media.player.IMediaPlayer.OnLogEventListener
            public void onLogEvent(IMediaPlayer iMediaPlayer, String str) {
                if (KSYTextureView.this.ab != null) {
                    KSYTextureView.this.ab.onLogEvent(iMediaPlayer, str);
                }
            }
        };
        this.f45310l = new IMediaPlayer.OnMessageListener() { // from class: com.ksyun.media.player.KSYTextureView.10
            @Override // com.ksyun.media.player.IMediaPlayer.OnMessageListener
            public void onMessage(IMediaPlayer iMediaPlayer, Bundle bundle) {
                if (KSYTextureView.this.ac != null) {
                    KSYTextureView.this.ac.onMessage(iMediaPlayer, bundle);
                }
            }
        };
        this.f45311m = new IMediaPlayer.OnTimedTextListener() { // from class: com.ksyun.media.player.KSYTextureView.2
            @Override // com.ksyun.media.player.IMediaPlayer.OnTimedTextListener
            public void onTimedText(IMediaPlayer iMediaPlayer, String str) {
                if (KSYTextureView.this.ad != null) {
                    KSYTextureView.this.ad.onTimedText(iMediaPlayer, str);
                }
            }
        };
        a(context);
        b(context);
    }

    private Bitmap a(IMediaPlayer iMediaPlayer) {
        int i4;
        Bitmap bitmap;
        if (this.f45312n == null) {
            return null;
        }
        int i10 = 0;
        if (iMediaPlayer != null) {
            int videoWidth = iMediaPlayer.getVideoWidth();
            i10 = iMediaPlayer.getVideoHeight();
            i4 = videoWidth;
        } else {
            i4 = 0;
        }
        if (i10 == 0 || i4 == 0 || (bitmap = this.f45312n.getBitmap()) == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i4 / width, i10 / height, i4 / 2, i10 / 2);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        if (createBitmap.equals(bitmap)) {
            return createBitmap;
        }
        bitmap.recycle();
        return createBitmap;
    }
}
