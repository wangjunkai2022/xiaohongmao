package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaDataSource;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.ksyun.media.player.misc.IMediaDataSource;
import com.ksyun.media.player.misc.ITrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes3.dex */
public class AndroidMediaPlayer extends com.ksyun.media.player.a {
    private static MediaInfo sMediaInfo;
    private String mDataSource;
    private final Object mInitLock;
    private final a mInternalListenerAdapter;
    private final MediaPlayer mInternalMediaPlayer;
    private boolean mIsReleased;
    private MediaDataSource mMediaDataSource;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<AndroidMediaPlayer> f45190a;

        public a(AndroidMediaPlayer androidMediaPlayer) {
            this.f45190a = new WeakReference<>(androidMediaPlayer);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i4) {
            if (this.f45190a.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnBufferingUpdate(i4);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (this.f45190a.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnCompletion();
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i4, int i10) {
            return this.f45190a.get() != null && AndroidMediaPlayer.this.notifyOnError(i4, i10);
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i4, int i10) {
            return this.f45190a.get() != null && AndroidMediaPlayer.this.notifyOnInfo(i4, i10);
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (this.f45190a.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnPrepared();
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            if (this.f45190a.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnSeekComplete();
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i4, int i10) {
            if (this.f45190a.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnVideoSizeChanged(i4, i10, 1, 1);
        }
    }

    @TargetApi(23)
    /* loaded from: classes3.dex */
    private static class b extends MediaDataSource {

        /* renamed from: a  reason: collision with root package name */
        private final IMediaDataSource f45192a;

        public b(IMediaDataSource iMediaDataSource) {
            this.f45192a = iMediaDataSource;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f45192a.close();
        }

        @Override // android.media.MediaDataSource
        public long getSize() throws IOException {
            return this.f45192a.getSize();
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j4, byte[] bArr, int i4, int i10) throws IOException {
            return this.f45192a.readAt(j4, bArr, i4, i10);
        }
    }

    public AndroidMediaPlayer() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.mInitLock = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.mInternalMediaPlayer = mediaPlayer;
        }
        mediaPlayer.setAudioStreamType(3);
        this.mInternalListenerAdapter = new a(this);
        attachInternalListeners();
    }

    private void attachInternalListeners() {
        this.mInternalMediaPlayer.setOnPreparedListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnBufferingUpdateListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnCompletionListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnSeekCompleteListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnVideoSizeChangedListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnErrorListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnInfoListener(this.mInternalListenerAdapter);
    }

    private void releaseMediaDataSource() {
        MediaDataSource mediaDataSource = this.mMediaDataSource;
        if (mediaDataSource != null) {
            try {
                mediaDataSource.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            this.mMediaDataSource = null;
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void addTimedTextSource(String str) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void deselectTrack(int i4) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getAudioSessionId() {
        return this.mInternalMediaPlayer.getAudioSessionId();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public long getCurrentPosition() {
        try {
            return this.mInternalMediaPlayer.getCurrentPosition();
        } catch (IllegalStateException e4) {
            com.ksyun.media.player.c.a.a(e4);
            return 0L;
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public String getDataSource() {
        return this.mDataSource;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public long getDuration() {
        try {
            return this.mInternalMediaPlayer.getDuration();
        } catch (IllegalStateException e4) {
            com.ksyun.media.player.c.a.a(e4);
            return 0L;
        }
    }

    public MediaPlayer getInternalMediaPlayer() {
        return this.mInternalMediaPlayer;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        if (sMediaInfo == null) {
            MediaInfo mediaInfo = new MediaInfo();
            mediaInfo.mVideoDecoder = "android";
            mediaInfo.mVideoDecoderImpl = "HW";
            mediaInfo.mAudioDecoder = "android";
            mediaInfo.mAudioDecoderImpl = "HW";
            sMediaInfo = mediaInfo;
        }
        return sMediaInfo;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public ITrackInfo[] getTrackInfo() {
        return com.ksyun.media.player.misc.b.a(this.mInternalMediaPlayer);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.mInternalMediaPlayer.getVideoHeight();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return 1;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return 1;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.mInternalMediaPlayer.getVideoWidth();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isLooping() {
        return this.mInternalMediaPlayer.isLooping();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isPlayable() {
        return true;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isPlaying() {
        try {
            return this.mInternalMediaPlayer.isPlaying();
        } catch (IllegalStateException e4) {
            com.ksyun.media.player.c.a.a(e4);
            return false;
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        this.mInternalMediaPlayer.pause();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void prepareAsync() throws IllegalStateException {
        this.mInternalMediaPlayer.prepareAsync();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void release() {
        this.mIsReleased = true;
        this.mInternalMediaPlayer.release();
        releaseMediaDataSource();
        resetListeners();
        attachInternalListeners();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void reset() {
        try {
            this.mInternalMediaPlayer.reset();
        } catch (IllegalStateException e4) {
            com.ksyun.media.player.c.a.a(e4);
        }
        releaseMediaDataSource();
        resetListeners();
        attachInternalListeners();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void seekTo(long j4) throws IllegalStateException {
        this.mInternalMediaPlayer.seekTo((int) j4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void selectTrack(int i4) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setAudioStreamType(int i4) {
        this.mInternalMediaPlayer.setAudioStreamType(i4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.mInternalMediaPlayer.setDataSource(context, uri);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        synchronized (this.mInitLock) {
            if (!this.mIsReleased) {
                this.mInternalMediaPlayer.setDisplay(surfaceHolder);
            }
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z9) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setLogEnabled(boolean z9) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setLooping(boolean z9) {
        this.mInternalMediaPlayer.setLooping(z9);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z9) {
        this.mInternalMediaPlayer.setScreenOnWhilePlaying(z9);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.mInternalMediaPlayer.setSurface(surface);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setVolume(float f10, float f11) {
        this.mInternalMediaPlayer.setVolume(f10, f11);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setWakeMode(Context context, int i4) {
        this.mInternalMediaPlayer.setWakeMode(context, i4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        this.mInternalMediaPlayer.start();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        this.mInternalMediaPlayer.stop();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.mInternalMediaPlayer.setDataSource(context, uri, map);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        this.mInternalMediaPlayer.setDataSource(fileDescriptor);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.mDataSource = str;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (!TextUtils.isEmpty(scheme) && scheme.equalsIgnoreCase("file")) {
            this.mInternalMediaPlayer.setDataSource(parse.getPath());
        } else {
            this.mInternalMediaPlayer.setDataSource(str);
        }
    }

    @Override // com.ksyun.media.player.a, com.ksyun.media.player.IMediaPlayer
    @TargetApi(23)
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        releaseMediaDataSource();
        b bVar = new b(iMediaDataSource);
        this.mMediaDataSource = bVar;
        this.mInternalMediaPlayer.setDataSource(bVar);
    }
}
