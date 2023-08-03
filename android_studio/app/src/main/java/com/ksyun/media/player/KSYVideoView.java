package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
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

/* loaded from: classes3.dex */
public class KSYVideoView extends FrameLayout implements SurfaceHolder.Callback, IMediaController.MediaPlayerControl {
    private static final int C = -1;
    private static final int D = 0;
    private static final int E = 1;
    private static final int F = 2;
    private static final int G = 3;
    private static final int H = 4;
    private static final int I = 5;
    private static final int J = 6;
    private static final int K = 7;

    /* renamed from: c  reason: collision with root package name */
    protected static final int f45361c = 8;
    private a A;
    private SurfaceHolder B;
    private IMediaPlayer.OnCompletionListener L;
    private IMediaPlayer.OnPreparedListener M;
    private IMediaPlayer.OnErrorListener N;
    private IMediaPlayer.OnSeekCompleteListener O;
    private IMediaPlayer.OnInfoListener P;
    private IMediaPlayer.OnBufferingUpdateListener Q;
    private IMediaPlayer.OnVideoSizeChangedListener R;
    private IMediaPlayer.OnLogEventListener S;
    private IMediaPlayer.OnMessageListener T;

    /* renamed from: a  reason: collision with root package name */
    protected MediaInfo f45362a;

    /* renamed from: b  reason: collision with root package name */
    protected int f45363b;

    /* renamed from: d  reason: collision with root package name */
    IMediaPlayer.OnVideoSizeChangedListener f45364d;

    /* renamed from: e  reason: collision with root package name */
    IMediaPlayer.OnPreparedListener f45365e;

    /* renamed from: f  reason: collision with root package name */
    protected final IMediaPlayer.OnCompletionListener f45366f;

    /* renamed from: g  reason: collision with root package name */
    protected final IMediaPlayer.OnErrorListener f45367g;

    /* renamed from: h  reason: collision with root package name */
    protected final IMediaPlayer.OnBufferingUpdateListener f45368h;

    /* renamed from: i  reason: collision with root package name */
    protected final IMediaPlayer.OnInfoListener f45369i;

    /* renamed from: j  reason: collision with root package name */
    protected final IMediaPlayer.OnSeekCompleteListener f45370j;

    /* renamed from: k  reason: collision with root package name */
    protected final IMediaPlayer.OnLogEventListener f45371k;

    /* renamed from: l  reason: collision with root package name */
    protected final IMediaPlayer.OnMessageListener f45372l;

    /* renamed from: m  reason: collision with root package name */
    private String f45373m;
    public int mCurrentState;

    /* renamed from: n  reason: collision with root package name */
    private IMediaController f45374n;

    /* renamed from: o  reason: collision with root package name */
    private KSYMediaPlayer f45375o;

    /* renamed from: p  reason: collision with root package name */
    private int f45376p;

    /* renamed from: q  reason: collision with root package name */
    private int f45377q;

    /* renamed from: r  reason: collision with root package name */
    private int f45378r;

    /* renamed from: s  reason: collision with root package name */
    private int f45379s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f45380t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f45381u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f45382v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f45383w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f45384x;

    /* renamed from: y  reason: collision with root package name */
    private int f45385y;

    /* renamed from: z  reason: collision with root package name */
    private int f45386z;

    public KSYVideoView(Context context) {
        super(context);
        this.f45373m = "KSYVideoView";
        this.f45380t = true;
        this.f45384x = false;
        this.f45385y = -1;
        this.f45386z = 0;
        this.mCurrentState = 0;
        this.f45364d = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.ksyun.media.player.KSYVideoView.1
            @Override // com.ksyun.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i4, int i10, int i11, int i12) {
                KSYVideoView.this.f45376p = iMediaPlayer.getVideoWidth();
                KSYVideoView.this.f45377q = iMediaPlayer.getVideoHeight();
                KSYVideoView.this.f45378r = i11;
                KSYVideoView.this.f45379s = i12;
                KSYVideoView kSYVideoView = KSYVideoView.this;
                if (kSYVideoView.mCurrentState == 3) {
                    kSYVideoView.A.a(KSYVideoView.this.f45376p, KSYVideoView.this.f45377q);
                    KSYVideoView.this.A.b(KSYVideoView.this.f45378r, KSYVideoView.this.f45379s);
                    KSYVideoView.this.requestLayout();
                }
                if (KSYVideoView.this.R != null) {
                    KSYVideoView.this.R.onVideoSizeChanged(iMediaPlayer, i4, i10, i11, i12);
                }
            }
        };
        this.f45365e = new IMediaPlayer.OnPreparedListener() { // from class: com.ksyun.media.player.KSYVideoView.2
            @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) {
                KSYVideoView.this.f45376p = iMediaPlayer.getVideoWidth();
                KSYVideoView.this.f45377q = iMediaPlayer.getVideoHeight();
                if (KSYVideoView.this.f45376p > 0 && KSYVideoView.this.f45377q > 0) {
                    KSYVideoView.this.A.a(KSYVideoView.this.f45376p, KSYVideoView.this.f45377q);
                }
                if (KSYVideoView.this.f45384x) {
                    KSYVideoView.this.f45386z = 0;
                    KSYVideoView.this.A.b(KSYVideoView.this.f45386z);
                } else if (KSYVideoView.this.A != null) {
                    KSYVideoView.this.A.b(KSYVideoView.this.f45386z);
                }
                if (KSYVideoView.this.M != null) {
                    KSYVideoView.this.M.onPrepared(iMediaPlayer);
                }
                KSYVideoView kSYVideoView = KSYVideoView.this;
                kSYVideoView.mCurrentState = 2;
                if (kSYVideoView.A != null && !KSYVideoView.this.A.isShown()) {
                    KSYVideoView.this.A.setVisibility(0);
                }
                KSYVideoView.this.A.requestLayout();
                if (KSYVideoView.this.f45374n != null) {
                    KSYVideoView.this.f45374n.setEnabled(true);
                    if (KSYVideoView.this.f45380t) {
                        KSYVideoView.this.f45374n.onStart();
                    } else {
                        KSYVideoView.this.f45374n.onPause();
                    }
                }
            }
        };
        this.f45366f = new IMediaPlayer.OnCompletionListener() { // from class: com.ksyun.media.player.KSYVideoView.3
            @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                KSYVideoView kSYVideoView = KSYVideoView.this;
                kSYVideoView.mCurrentState = 8;
                if (kSYVideoView.L != null) {
                    KSYVideoView.this.L.onCompletion(iMediaPlayer);
                }
                if (KSYVideoView.this.f45374n != null) {
                    KSYVideoView.this.f45374n.hide();
                }
            }
        };
        this.f45367g = new IMediaPlayer.OnErrorListener() { // from class: com.ksyun.media.player.KSYVideoView.4
            @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i4, int i10) {
                if (KSYVideoView.this.f45374n != null) {
                    KSYVideoView.this.f45374n.hide();
                }
                if (KSYVideoView.this.N != null) {
                    KSYVideoView kSYVideoView = KSYVideoView.this;
                    kSYVideoView.mCurrentState = -1;
                    kSYVideoView.N.onError(iMediaPlayer, i4, i10);
                }
                return true;
            }
        };
        this.f45368h = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.ksyun.media.player.KSYVideoView.5
            @Override // com.ksyun.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i4) {
                KSYVideoView kSYVideoView = KSYVideoView.this;
                kSYVideoView.f45363b = i4;
                if (kSYVideoView.Q != null) {
                    KSYVideoView.this.Q.onBufferingUpdate(iMediaPlayer, i4);
                }
            }
        };
        this.f45369i = new IMediaPlayer.OnInfoListener() { // from class: com.ksyun.media.player.KSYVideoView.6
            @Override // com.ksyun.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i4, int i10) {
                switch (i4) {
                    case IMediaPlayer.MEDIA_INFO_VIDEO_ROTATION_CHANGED /* 10001 */:
                        KSYVideoView.this.setRotateDegree(i10);
                        break;
                    case IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE /* 41000 */:
                        KSYVideoView.this.f45384x = true;
                        break;
                    case IMediaPlayer.MEDIA_INFO_SOFTWARE_DECODE /* 41001 */:
                        KSYVideoView.this.f45384x = false;
                        break;
                    case IMediaPlayer.MEDIA_INFO_RELOADED /* 50001 */:
                        KSYVideoView kSYVideoView = KSYVideoView.this;
                        kSYVideoView.f45363b = 0;
                        if (kSYVideoView.f45380t && KSYVideoView.this.f45375o != null) {
                            KSYVideoView.this.f45375o.start();
                        }
                        if (KSYVideoView.this.A != null) {
                            KSYVideoView.this.A.setVisibility(0);
                        }
                        if (KSYVideoView.this.f45374n != null) {
                            KSYVideoView.this.f45374n.setEnabled(true);
                            if (KSYVideoView.this.f45380t) {
                                KSYVideoView.this.f45374n.onStart();
                            } else {
                                KSYVideoView.this.f45374n.onPause();
                            }
                        }
                        if (KSYVideoView.this.f45380t) {
                            KSYVideoView.this.mCurrentState = 3;
                        } else {
                            KSYVideoView.this.mCurrentState = 6;
                        }
                        KSYVideoView kSYVideoView2 = KSYVideoView.this;
                        kSYVideoView2.setVideoScalingMode(kSYVideoView2.f45385y);
                        break;
                }
                if (KSYVideoView.this.P != null) {
                    KSYVideoView.this.P.onInfo(iMediaPlayer, i4, i10);
                }
                return true;
            }
        };
        this.f45370j = new IMediaPlayer.OnSeekCompleteListener() { // from class: com.ksyun.media.player.KSYVideoView.7
            @Override // com.ksyun.media.player.IMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                if (KSYVideoView.this.O != null) {
                    KSYVideoView.this.O.onSeekComplete(iMediaPlayer);
                }
            }
        };
        this.f45371k = new IMediaPlayer.OnLogEventListener() { // from class: com.ksyun.media.player.KSYVideoView.8
            @Override // com.ksyun.media.player.IMediaPlayer.OnLogEventListener
            public void onLogEvent(IMediaPlayer iMediaPlayer, String str) {
                if (KSYVideoView.this.S != null) {
                    KSYVideoView.this.S.onLogEvent(iMediaPlayer, str);
                }
            }
        };
        this.f45372l = new IMediaPlayer.OnMessageListener() { // from class: com.ksyun.media.player.KSYVideoView.9
            @Override // com.ksyun.media.player.IMediaPlayer.OnMessageListener
            public void onMessage(IMediaPlayer iMediaPlayer, Bundle bundle) {
                if (KSYVideoView.this.T != null) {
                    KSYVideoView.this.T.onMessage(iMediaPlayer, bundle);
                }
            }
        };
        a(context);
        b(context);
    }

    public void addVideoRawBuffer(byte[] bArr) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.addVideoRawBuffer(bArr);
        }
    }

    public int bufferEmptyCount() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.bufferEmptyCount();
        }
        return 0;
    }

    public float bufferEmptyDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
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
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.deselectTrack(i4);
        }
    }

    public long getAudioCachedBytes() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioCachedBytes();
        }
        return 0L;
    }

    public long getAudioCachedDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioCachedDuration();
        }
        return 0L;
    }

    public long getAudioCachedPackets() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioCachedPackets();
        }
        return 0L;
    }

    public int getAudioSessionId() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getAudioSessionId();
        }
        return -1;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f45375o != null) {
            return this.f45363b;
        }
        return 0;
    }

    public float getBufferTimeMax() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getBufferTimeMax();
        }
        return 0.0f;
    }

    public String getClientIP() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.getClientIP();
            return "N/A";
        }
        return "N/A";
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public long getCurrentPosition() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    public long getCurrentPts() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getCurrentPts();
        }
        return 0L;
    }

    public String getDataSource() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDataSource();
        }
        return null;
    }

    public long getDecodedDataSize() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDecodedDataSize();
        }
        return 0L;
    }

    public long getDownloadDataSize() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDownloadDataSize();
        }
        return 0L;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public long getDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getDuration();
        }
        return 0L;
    }

    public String getLocalDnsIP() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.getLocalDnsIP();
            return "N/A";
        }
        return "N/A";
    }

    public MediaInfo getMediaInfo() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            if (this.f45362a == null) {
                this.f45362a = kSYMediaPlayer.getMediaInfo();
            }
            return this.f45362a;
        }
        this.f45362a = null;
        return null;
    }

    public Bundle getMediaMeta() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getMediaMeta();
        }
        return null;
    }

    public Bitmap getScreenShot() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer == null || this.f45384x) {
            return null;
        }
        return kSYMediaPlayer.getScreenShot();
    }

    public int getSelectedTrack(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getSelectedTrack(i4);
        }
        return 0;
    }

    public String getServerAddress() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        return kSYMediaPlayer != null ? kSYMediaPlayer.getServerAddress() : "N/A";
    }

    public float getSpeed() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getSpeed();
        }
        return 1.0f;
    }

    public KSYQosInfo getStreamQosInfo() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getStreamQosInfo();
        }
        return null;
    }

    public long getStreamStartTime() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getStreamStartTime();
        }
        return 0L;
    }

    public KSYTrackInfo[] getTrackInfo() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getTrackInfo();
        }
        return null;
    }

    public String getVersion() {
        return this.f45375o != null ? KSYMediaPlayer.getVersion() : "N/A";
    }

    public long getVideoCachedBytes() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoCachedBytes();
        }
        return 0L;
    }

    public long getVideoCachedDuration() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoCachedDuration();
        }
        return 0L;
    }

    public long getVideoCachedPackets() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoCachedPackets();
        }
        return 0L;
    }

    public float getVideoDecodeFramesPerSecond() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoDecodeFramesPerSecond();
        }
        return 0.0f;
    }

    public int getVideoDecoder() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoDecoder();
        }
        return 0;
    }

    public int getVideoHeight() {
        return this.f45377q;
    }

    public float getVideoOutputFramesPerSecond() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoOutputFramesPerSecond();
        }
        return 0.0f;
    }

    public int getVideoSarDen() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoSarDen();
        }
        return 0;
    }

    public int getVideoSarNum() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.getVideoSarNum();
        }
        return 0;
    }

    public int getVideoWidth() {
        return this.f45376p;
    }

    public boolean isLooping() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.isLooping();
        }
        return false;
    }

    public boolean isPlayable() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.isPlayable();
        }
        return false;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public boolean isPlaying() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            return kSYMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        boolean z9 = (i4 == 4 || i4 == 24 || i4 == 25 || i4 == 164 || i4 == 82 || i4 == 5 || i4 == 6) ? false : true;
        if (b() && z9 && this.f45374n != null) {
            if (i4 == 79 || i4 == 85) {
                if (this.f45375o.isPlaying()) {
                    pause();
                    this.f45374n.show();
                } else {
                    start();
                    this.f45374n.hide();
                }
                return true;
            } else if (i4 == 126) {
                if (!this.f45375o.isPlaying()) {
                    start();
                    this.f45374n.hide();
                }
                return true;
            } else if (i4 != 86 && i4 != 127) {
                c();
            } else {
                if (this.f45375o.isPlaying()) {
                    pause();
                    this.f45374n.show();
                }
                return true;
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        if (this.mCurrentState < 2) {
            super.onMeasure(i4, i10);
        } else if (this.f45376p != 0 && this.f45377q != 0) {
            a aVar = this.A;
            if (aVar == null) {
                super.onMeasure(i4, i10);
                return;
            }
            measureChild(aVar, i4, i10);
            int mode = View.MeasureSpec.getMode(i4);
            int size = View.MeasureSpec.getSize(i4);
            int mode2 = View.MeasureSpec.getMode(i10);
            int size2 = View.MeasureSpec.getSize(i10);
            if (mode != 1073741824 || mode2 != 1073741824) {
                if (mode == 1073741824) {
                    int b10 = this.A.b();
                    if (b10 <= size2) {
                        size2 = b10;
                    }
                } else if (mode2 == 1073741824) {
                    int a10 = this.A.a();
                    if (a10 <= size) {
                        size = a10;
                    }
                } else {
                    int a11 = this.A.a();
                    int b11 = this.A.b();
                    if (a11 <= size) {
                        size = a11;
                    }
                    if (b11 <= size2) {
                        size2 = b11;
                    }
                }
            }
            setMeasuredDimension(size, size2);
            if (this.mCurrentState == 2 && this.f45380t) {
                start();
            }
        } else {
            super.onMeasure(i4, i10);
            if (this.mCurrentState == 2 && this.f45380t) {
                start();
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!b() || this.f45374n == null) {
            return false;
        }
        c();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!b() || this.f45374n == null) {
            return false;
        }
        c();
        return false;
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public void pause() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.pause();
            this.mCurrentState = 4;
            IMediaController iMediaController = this.f45374n;
            if (iMediaController != null) {
                iMediaController.onPause();
            }
        }
    }

    public void prepareAsync() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.prepareAsync();
            this.mCurrentState = 1;
        }
    }

    public void release() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.release();
            this.f45375o = null;
            this.mCurrentState = 0;
        }
    }

    public void reload(String str, boolean z9) {
        a aVar;
        this.f45383w = false;
        this.f45382v = false;
        this.f45381u = false;
        this.f45363b = 0;
        this.mCurrentState = 5;
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.reload(str, z9);
        }
        if (z9 && (aVar = this.A) != null) {
            aVar.setVisibility(4);
        }
        IMediaController iMediaController = this.f45374n;
        if (iMediaController != null) {
            iMediaController.setEnabled(false);
        }
    }

    public void reset() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.reset();
            d();
        }
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public void seekTo(long j4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.seekTo(j4);
        }
    }

    public void selectTrack(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.selectTrack(i4);
        }
    }

    public void setBufferSize(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setBufferSize(i4);
        }
    }

    public void setBufferTimeMax(float f10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setBufferTimeMax(f10);
        }
    }

    public void setDataSource(Context context, Uri uri) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(context, uri);
        }
    }

    public void setDecodeMode(KSYMediaPlayer.KSYDecodeMode kSYDecodeMode) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDecodeMode(kSYDecodeMode);
        }
    }

    public void setDeinterlaceMode(KSYMediaPlayer.KSYDeinterlaceMode kSYDeinterlaceMode) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDeinterlaceMode(kSYDeinterlaceMode);
        }
    }

    public void setLooping(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setLooping(z9);
        }
    }

    public void setMediaController(IMediaController iMediaController) {
        IMediaController iMediaController2 = this.f45374n;
        if (iMediaController2 != null) {
            iMediaController2.hide();
        }
        this.f45374n = iMediaController;
        a();
    }

    public void setMirror(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer;
        if (this.f45384x || (kSYMediaPlayer = this.f45375o) == null) {
            return;
        }
        kSYMediaPlayer.setMirror(z9);
    }

    public void setOnAudioPCMAvailableListener(KSYMediaPlayer.OnAudioPCMListener onAudioPCMListener) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setOnAudioPCMAvailableListener(onAudioPCMListener);
        }
    }

    public void setOnBufferingUpdateListener(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.Q = onBufferingUpdateListener;
    }

    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.L = onCompletionListener;
    }

    public void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        this.N = onErrorListener;
    }

    public void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.P = onInfoListener;
    }

    public void setOnLogEventListener(IMediaPlayer.OnLogEventListener onLogEventListener) {
        this.S = onLogEventListener;
    }

    public void setOnMessageListener(IMediaPlayer.OnMessageListener onMessageListener) {
        this.T = onMessageListener;
    }

    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.M = onPreparedListener;
    }

    public void setOnSeekCompleteListener(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.O = onSeekCompleteListener;
    }

    public void setOnVideoSizeChangedListener(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.R = onVideoSizeChangedListener;
    }

    public void setOption(int i4, String str, String str2) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setOption(i4, str, str2);
        }
    }

    public void setPlayableRanges(long j4, long j10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setPlayableRanges(j4, j10);
        }
    }

    public void setPlayerMute(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setPlayerMute(i4);
        }
    }

    public boolean setRotateDegree(int i4) {
        if (this.f45384x) {
            return false;
        }
        this.f45386z = i4;
        if (this.mCurrentState > 2) {
            this.A.b(i4);
        }
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setRotateDegree(i4);
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public void setRotation(float f10) {
        setRotateDegree((int) f10);
    }

    public void setScreenOnWhilePlaying(boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setScreenOnWhilePlaying(z9);
        }
    }

    public void setSpeed(float f10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setSpeed(f10);
        }
    }

    public void setTimeout(int i4, int i10) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setTimeout(i4, i10);
        }
    }

    public void setVideoOffset(float f10, float f11) {
        KSYMediaPlayer kSYMediaPlayer;
        if (this.f45384x || (kSYMediaPlayer = this.f45375o) == null) {
            return;
        }
        kSYMediaPlayer.setVideoOffset(f10, f11);
    }

    public void setVideoRawDataListener(KSYMediaPlayer.OnVideoRawDataListener onVideoRawDataListener) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVideoRawDataListener(onVideoRawDataListener);
        }
    }

    public void setVideoRenderingState(int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVideoRenderingState(i4);
        }
    }

    public void setVideoScalingMode(int i4) {
        this.f45385y = i4;
        a aVar = this.A;
        if (aVar != null) {
            aVar.a(i4);
        }
    }

    public void setVolume(float f10, float f11) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVolume(f10, f11);
        }
    }

    public void setWakeMode(Context context, int i4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setWakeMode(context, i4);
        }
    }

    public void shouldAutoPlay(boolean z9) {
        this.f45380t = z9;
    }

    public void softReset() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.softReset();
            d();
        }
    }

    @Override // com.ksyun.media.player.IMediaController.MediaPlayerControl
    public void start() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer == null || this.mCurrentState < 2) {
            return;
        }
        kSYMediaPlayer.start();
        this.mCurrentState = 3;
        IMediaController iMediaController = this.f45374n;
        if (iMediaController != null) {
            iMediaController.onStart();
        }
    }

    public void stop() {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.stop();
        }
        this.mCurrentState = 7;
        this.f45381u = false;
        this.f45383w = false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i10, int i11) {
        a aVar = this.A;
        if (aVar != null) {
            aVar.getHolder().setFixedSize(i10, i11);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDisplay(surfaceHolder);
            this.B = surfaceHolder;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDisplay(null);
            this.B = null;
        }
        IMediaController iMediaController = this.f45374n;
        if (iMediaController != null) {
            iMediaController.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends SurfaceView {

        /* renamed from: b  reason: collision with root package name */
        private int f45397b;

        /* renamed from: c  reason: collision with root package name */
        private int f45398c;

        /* renamed from: d  reason: collision with root package name */
        private int f45399d;

        /* renamed from: e  reason: collision with root package name */
        private int f45400e;

        /* renamed from: f  reason: collision with root package name */
        private int f45401f;

        /* renamed from: g  reason: collision with root package name */
        private int f45402g;

        /* renamed from: h  reason: collision with root package name */
        private int f45403h;

        /* renamed from: i  reason: collision with root package name */
        private int f45404i;

        public a(Context context) {
            super(context);
            this.f45403h = 0;
            this.f45404i = -1;
        }

        private void c(int i4, int i10) {
            int i11;
            int i12;
            int i13;
            int i14 = this.f45397b;
            if (i14 != 0 && (i11 = this.f45398c) != 0) {
                int size = View.MeasureSpec.getSize(i4);
                int size2 = View.MeasureSpec.getSize(i10);
                int i15 = this.f45399d;
                if (i15 > 0 && (i13 = this.f45400e) > 0) {
                    i14 = (i14 * i15) / i13;
                }
                float f10 = size;
                float f11 = i14 / f10;
                float f12 = size2;
                float f13 = i11 / f12;
                int i16 = this.f45403h;
                if ((i16 / 90) % 2 != 0) {
                    i11 = this.f45397b;
                    i14 = this.f45398c;
                    if (i15 > 0 && (i12 = this.f45400e) > 0) {
                        i11 = (i11 * i15) / i12;
                    }
                }
                int i17 = this.f45404i;
                float f14 = 1.0f;
                if (i17 != 0) {
                    if (i17 == 1) {
                        f14 = Math.min(f10 / i14, f12 / i11);
                    } else if (i17 == 2) {
                        f14 = Math.max(f10 / i14, f12 / i11);
                    }
                } else if ((i16 / 90) % 2 != 0) {
                    f11 = f12 / f10;
                    f13 = f10 / f12;
                } else {
                    f11 = 1.0f;
                    f13 = 1.0f;
                }
                if ((this.f45403h / 90) % 2 != 0) {
                    this.f45402g = (int) (f10 * f14 * f11);
                    this.f45401f = (int) (f12 * f14 * f13);
                    return;
                }
                this.f45401f = (int) (f10 * f14 * f11);
                this.f45402g = (int) (f12 * f14 * f13);
                return;
            }
            this.f45401f = View.MeasureSpec.getSize(i4);
            this.f45402g = View.MeasureSpec.getSize(i10);
        }

        public void a(int i4, int i10) {
            if (this.f45397b != i4 || this.f45398c != i10) {
                this.f45397b = i4;
                this.f45398c = i10;
            }
            getHolder().setFixedSize(0, 0);
        }

        public void b(int i4, int i10) {
            this.f45399d = i4;
            this.f45400e = i10;
        }

        @Override // android.view.SurfaceView, android.view.View
        protected void onMeasure(int i4, int i10) {
            int i11;
            c(i4, i10);
            int i12 = this.f45401f;
            if (i12 > 0 && (i11 = this.f45402g) > 0) {
                setMeasuredDimension(i12, i11);
            } else {
                super.onMeasure(i4, i10);
            }
        }

        public int b() {
            return this.f45402g;
        }

        public boolean b(int i4) {
            this.f45403h = i4;
            requestLayout();
            return true;
        }

        public a(KSYVideoView kSYVideoView, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public int a() {
            return this.f45401f;
        }

        public a(Context context, AttributeSet attributeSet, int i4) {
            super(context, attributeSet, i4);
            this.f45403h = 0;
            this.f45404i = -1;
        }

        public void a(int i4) {
            this.f45404i = i4;
            requestLayout();
        }

        public void c() {
            this.f45397b = 0;
            this.f45398c = 0;
            this.f45399d = 0;
            this.f45400e = 0;
            this.f45401f = 0;
            this.f45402g = 0;
            this.f45403h = 0;
            this.f45404i = -1;
        }
    }

    private void b(Context context) {
        KSYMediaPlayer build = new KSYMediaPlayer.Builder(context).build();
        this.f45375o = build;
        build.setOnPreparedListener(this.f45365e);
        this.f45375o.setOnVideoSizeChangedListener(this.f45364d);
        this.f45375o.setOnCompletionListener(this.f45366f);
        this.f45375o.setOnErrorListener(this.f45367g);
        this.f45375o.setOnBufferingUpdateListener(this.f45368h);
        this.f45375o.setOnInfoListener(this.f45369i);
        this.f45375o.setOnSeekCompleteListener(this.f45370j);
        this.f45375o.setOnLogEventListener(this.f45371k);
        this.f45375o.setOnMessageListener(this.f45372l);
        this.f45375o.shouldAutoPlay(false);
    }

    private void c() {
        if (this.f45374n.isShowing()) {
            this.f45374n.hide();
        } else {
            this.f45374n.show();
        }
    }

    private void d() {
        this.f45362a = null;
        this.f45384x = false;
        this.f45385y = -1;
        this.f45386z = 0;
        this.f45363b = 0;
        this.f45379s = 0;
        this.f45378r = 0;
        this.f45377q = 0;
        this.f45376p = 0;
        this.f45383w = false;
        this.f45382v = false;
        this.f45381u = false;
        this.mCurrentState = 0;
        this.f45380t = true;
        a aVar = this.A;
        if (aVar != null) {
            aVar.c();
            this.A.setVisibility(4);
        }
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.shouldAutoPlay(false);
            this.f45375o.setDisplay(this.B);
        }
        IMediaController iMediaController = this.f45374n;
        if (iMediaController != null) {
            iMediaController.setEnabled(false);
        }
    }

    public void seekTo(long j4, boolean z9) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.seekTo(j4, z9);
        }
    }

    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(context, uri, map);
        }
    }

    public void setOption(int i4, String str, long j4) {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setOption(i4, str, j4);
        }
    }

    private void a(Context context) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        a aVar = new a(context);
        this.A = aVar;
        aVar.getHolder().addCallback(this);
        addView(this.A, layoutParams);
        this.f45379s = 0;
        this.f45378r = 0;
        this.f45377q = 0;
        this.f45376p = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    public void setDataSource(String str) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(str);
        }
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(str, map);
        }
    }

    @TargetApi(13)
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(fileDescriptor);
        }
    }

    public void reload(String str, boolean z9, KSYMediaPlayer.KSYReloadMode kSYReloadMode) {
        a aVar;
        this.f45383w = false;
        this.f45382v = false;
        this.f45381u = false;
        this.f45363b = 0;
        this.mCurrentState = 5;
        if (z9 && (aVar = this.A) != null) {
            aVar.setVisibility(4);
        }
        IMediaController iMediaController = this.f45374n;
        if (iMediaController != null) {
            iMediaController.setEnabled(false);
        }
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.reload(str, z9, kSYReloadMode);
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j4, long j10) throws IOException, IllegalArgumentException, IllegalStateException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(fileDescriptor, j4, j10);
        }
    }

    private void a() {
        IMediaController iMediaController;
        if (this.f45375o == null || (iMediaController = this.f45374n) == null) {
            return;
        }
        iMediaController.setMediaPlayer(this);
        this.f45374n.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
        this.f45374n.setEnabled(false);
        this.f45374n.hide();
    }

    public void setDataSource(List<String> list, Map<String, String> map) throws IOException, IllegalArgumentException, IllegalStateException {
        KSYMediaPlayer kSYMediaPlayer = this.f45375o;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setDataSource(list, map);
        }
    }

    private boolean b() {
        return this.f45375o != null;
    }

    public KSYVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KSYVideoView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f45373m = "KSYVideoView";
        this.f45380t = true;
        this.f45384x = false;
        this.f45385y = -1;
        this.f45386z = 0;
        this.mCurrentState = 0;
        this.f45364d = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.ksyun.media.player.KSYVideoView.1
            @Override // com.ksyun.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i42, int i10, int i11, int i12) {
                KSYVideoView.this.f45376p = iMediaPlayer.getVideoWidth();
                KSYVideoView.this.f45377q = iMediaPlayer.getVideoHeight();
                KSYVideoView.this.f45378r = i11;
                KSYVideoView.this.f45379s = i12;
                KSYVideoView kSYVideoView = KSYVideoView.this;
                if (kSYVideoView.mCurrentState == 3) {
                    kSYVideoView.A.a(KSYVideoView.this.f45376p, KSYVideoView.this.f45377q);
                    KSYVideoView.this.A.b(KSYVideoView.this.f45378r, KSYVideoView.this.f45379s);
                    KSYVideoView.this.requestLayout();
                }
                if (KSYVideoView.this.R != null) {
                    KSYVideoView.this.R.onVideoSizeChanged(iMediaPlayer, i42, i10, i11, i12);
                }
            }
        };
        this.f45365e = new IMediaPlayer.OnPreparedListener() { // from class: com.ksyun.media.player.KSYVideoView.2
            @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) {
                KSYVideoView.this.f45376p = iMediaPlayer.getVideoWidth();
                KSYVideoView.this.f45377q = iMediaPlayer.getVideoHeight();
                if (KSYVideoView.this.f45376p > 0 && KSYVideoView.this.f45377q > 0) {
                    KSYVideoView.this.A.a(KSYVideoView.this.f45376p, KSYVideoView.this.f45377q);
                }
                if (KSYVideoView.this.f45384x) {
                    KSYVideoView.this.f45386z = 0;
                    KSYVideoView.this.A.b(KSYVideoView.this.f45386z);
                } else if (KSYVideoView.this.A != null) {
                    KSYVideoView.this.A.b(KSYVideoView.this.f45386z);
                }
                if (KSYVideoView.this.M != null) {
                    KSYVideoView.this.M.onPrepared(iMediaPlayer);
                }
                KSYVideoView kSYVideoView = KSYVideoView.this;
                kSYVideoView.mCurrentState = 2;
                if (kSYVideoView.A != null && !KSYVideoView.this.A.isShown()) {
                    KSYVideoView.this.A.setVisibility(0);
                }
                KSYVideoView.this.A.requestLayout();
                if (KSYVideoView.this.f45374n != null) {
                    KSYVideoView.this.f45374n.setEnabled(true);
                    if (KSYVideoView.this.f45380t) {
                        KSYVideoView.this.f45374n.onStart();
                    } else {
                        KSYVideoView.this.f45374n.onPause();
                    }
                }
            }
        };
        this.f45366f = new IMediaPlayer.OnCompletionListener() { // from class: com.ksyun.media.player.KSYVideoView.3
            @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                KSYVideoView kSYVideoView = KSYVideoView.this;
                kSYVideoView.mCurrentState = 8;
                if (kSYVideoView.L != null) {
                    KSYVideoView.this.L.onCompletion(iMediaPlayer);
                }
                if (KSYVideoView.this.f45374n != null) {
                    KSYVideoView.this.f45374n.hide();
                }
            }
        };
        this.f45367g = new IMediaPlayer.OnErrorListener() { // from class: com.ksyun.media.player.KSYVideoView.4
            @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i42, int i10) {
                if (KSYVideoView.this.f45374n != null) {
                    KSYVideoView.this.f45374n.hide();
                }
                if (KSYVideoView.this.N != null) {
                    KSYVideoView kSYVideoView = KSYVideoView.this;
                    kSYVideoView.mCurrentState = -1;
                    kSYVideoView.N.onError(iMediaPlayer, i42, i10);
                }
                return true;
            }
        };
        this.f45368h = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.ksyun.media.player.KSYVideoView.5
            @Override // com.ksyun.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i42) {
                KSYVideoView kSYVideoView = KSYVideoView.this;
                kSYVideoView.f45363b = i42;
                if (kSYVideoView.Q != null) {
                    KSYVideoView.this.Q.onBufferingUpdate(iMediaPlayer, i42);
                }
            }
        };
        this.f45369i = new IMediaPlayer.OnInfoListener() { // from class: com.ksyun.media.player.KSYVideoView.6
            @Override // com.ksyun.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i42, int i10) {
                switch (i42) {
                    case IMediaPlayer.MEDIA_INFO_VIDEO_ROTATION_CHANGED /* 10001 */:
                        KSYVideoView.this.setRotateDegree(i10);
                        break;
                    case IMediaPlayer.MEDIA_INFO_HARDWARE_DECODE /* 41000 */:
                        KSYVideoView.this.f45384x = true;
                        break;
                    case IMediaPlayer.MEDIA_INFO_SOFTWARE_DECODE /* 41001 */:
                        KSYVideoView.this.f45384x = false;
                        break;
                    case IMediaPlayer.MEDIA_INFO_RELOADED /* 50001 */:
                        KSYVideoView kSYVideoView = KSYVideoView.this;
                        kSYVideoView.f45363b = 0;
                        if (kSYVideoView.f45380t && KSYVideoView.this.f45375o != null) {
                            KSYVideoView.this.f45375o.start();
                        }
                        if (KSYVideoView.this.A != null) {
                            KSYVideoView.this.A.setVisibility(0);
                        }
                        if (KSYVideoView.this.f45374n != null) {
                            KSYVideoView.this.f45374n.setEnabled(true);
                            if (KSYVideoView.this.f45380t) {
                                KSYVideoView.this.f45374n.onStart();
                            } else {
                                KSYVideoView.this.f45374n.onPause();
                            }
                        }
                        if (KSYVideoView.this.f45380t) {
                            KSYVideoView.this.mCurrentState = 3;
                        } else {
                            KSYVideoView.this.mCurrentState = 6;
                        }
                        KSYVideoView kSYVideoView2 = KSYVideoView.this;
                        kSYVideoView2.setVideoScalingMode(kSYVideoView2.f45385y);
                        break;
                }
                if (KSYVideoView.this.P != null) {
                    KSYVideoView.this.P.onInfo(iMediaPlayer, i42, i10);
                }
                return true;
            }
        };
        this.f45370j = new IMediaPlayer.OnSeekCompleteListener() { // from class: com.ksyun.media.player.KSYVideoView.7
            @Override // com.ksyun.media.player.IMediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                if (KSYVideoView.this.O != null) {
                    KSYVideoView.this.O.onSeekComplete(iMediaPlayer);
                }
            }
        };
        this.f45371k = new IMediaPlayer.OnLogEventListener() { // from class: com.ksyun.media.player.KSYVideoView.8
            @Override // com.ksyun.media.player.IMediaPlayer.OnLogEventListener
            public void onLogEvent(IMediaPlayer iMediaPlayer, String str) {
                if (KSYVideoView.this.S != null) {
                    KSYVideoView.this.S.onLogEvent(iMediaPlayer, str);
                }
            }
        };
        this.f45372l = new IMediaPlayer.OnMessageListener() { // from class: com.ksyun.media.player.KSYVideoView.9
            @Override // com.ksyun.media.player.IMediaPlayer.OnMessageListener
            public void onMessage(IMediaPlayer iMediaPlayer, Bundle bundle) {
                if (KSYVideoView.this.T != null) {
                    KSYVideoView.this.T.onMessage(iMediaPlayer, bundle);
                }
            }
        };
        a(context);
        b(context);
    }
}
