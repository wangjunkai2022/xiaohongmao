package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.ksyun.media.player.IMediaPlayer;
import com.ksyun.media.player.misc.IMediaDataSource;
import com.ksyun.media.player.misc.ITrackInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;

/* compiled from: MediaPlayerProxy.java */
/* loaded from: classes3.dex */
public class g implements IMediaPlayer {

    /* renamed from: a  reason: collision with root package name */
    protected final IMediaPlayer f45514a;

    public g(IMediaPlayer iMediaPlayer) {
        this.f45514a = iMediaPlayer;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void addTimedTextSource(String str) {
    }

    public IMediaPlayer b() {
        return this.f45514a;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void deselectTrack(int i4) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getAudioSessionId() {
        return this.f45514a.getAudioSessionId();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public long getCurrentPosition() {
        return this.f45514a.getCurrentPosition();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public String getDataSource() {
        return this.f45514a.getDataSource();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public long getDuration() {
        return this.f45514a.getDuration();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        return this.f45514a.getMediaInfo();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public ITrackInfo[] getTrackInfo() {
        return this.f45514a.getTrackInfo();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.f45514a.getVideoHeight();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return this.f45514a.getVideoSarDen();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return this.f45514a.getVideoSarNum();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.f45514a.getVideoWidth();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isLooping() {
        return this.f45514a.isLooping();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isPlayable() {
        return false;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public boolean isPlaying() {
        return this.f45514a.isPlaying();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        this.f45514a.pause();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void prepareAsync() throws IllegalStateException {
        this.f45514a.prepareAsync();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void release() {
        this.f45514a.release();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void reset() {
        this.f45514a.reset();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void seekTo(long j4) throws IllegalStateException {
        this.f45514a.seekTo(j4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void selectTrack(int i4) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setAudioStreamType(int i4) {
        this.f45514a.setAudioStreamType(i4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.f45514a.setDataSource(context, uri);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.f45514a.setDisplay(surfaceHolder);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z9) {
        this.f45514a.setKeepInBackground(z9);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setLogEnabled(boolean z9) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setLooping(boolean z9) {
        this.f45514a.setLooping(z9);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnBufferingUpdateListener(final IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        if (onBufferingUpdateListener != null) {
            this.f45514a.setOnBufferingUpdateListener(new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.ksyun.media.player.g.3
                @Override // com.ksyun.media.player.IMediaPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i4) {
                    onBufferingUpdateListener.onBufferingUpdate(g.this, i4);
                }
            });
        } else {
            this.f45514a.setOnBufferingUpdateListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnCompletionListener(final IMediaPlayer.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this.f45514a.setOnCompletionListener(new IMediaPlayer.OnCompletionListener() { // from class: com.ksyun.media.player.g.2
                @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
                public void onCompletion(IMediaPlayer iMediaPlayer) {
                    onCompletionListener.onCompletion(g.this);
                }
            });
        } else {
            this.f45514a.setOnCompletionListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnErrorListener(final IMediaPlayer.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this.f45514a.setOnErrorListener(new IMediaPlayer.OnErrorListener() { // from class: com.ksyun.media.player.g.6
                @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
                public boolean onError(IMediaPlayer iMediaPlayer, int i4, int i10) {
                    return onErrorListener.onError(g.this, i4, i10);
                }
            });
        } else {
            this.f45514a.setOnErrorListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnInfoListener(final IMediaPlayer.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this.f45514a.setOnInfoListener(new IMediaPlayer.OnInfoListener() { // from class: com.ksyun.media.player.g.7
                @Override // com.ksyun.media.player.IMediaPlayer.OnInfoListener
                public boolean onInfo(IMediaPlayer iMediaPlayer, int i4, int i10) {
                    return onInfoListener.onInfo(g.this, i4, i10);
                }
            });
        } else {
            this.f45514a.setOnInfoListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnMessageListener(IMediaPlayer.OnMessageListener onMessageListener) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnPreparedListener(final IMediaPlayer.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this.f45514a.setOnPreparedListener(new IMediaPlayer.OnPreparedListener() { // from class: com.ksyun.media.player.g.1
                @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
                public void onPrepared(IMediaPlayer iMediaPlayer) {
                    onPreparedListener.onPrepared(g.this);
                }
            });
        } else {
            this.f45514a.setOnPreparedListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnSeekCompleteListener(final IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this.f45514a.setOnSeekCompleteListener(new IMediaPlayer.OnSeekCompleteListener() { // from class: com.ksyun.media.player.g.4
                @Override // com.ksyun.media.player.IMediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                    onSeekCompleteListener.onSeekComplete(g.this);
                }
            });
        } else {
            this.f45514a.setOnSeekCompleteListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnTimedTextListener(IMediaPlayer.OnTimedTextListener onTimedTextListener) {
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setOnVideoSizeChangedListener(final IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        if (onVideoSizeChangedListener != null) {
            this.f45514a.setOnVideoSizeChangedListener(new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.ksyun.media.player.g.5
                @Override // com.ksyun.media.player.IMediaPlayer.OnVideoSizeChangedListener
                public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i4, int i10, int i11, int i12) {
                    onVideoSizeChangedListener.onVideoSizeChanged(g.this, i4, i10, i11, i12);
                }
            });
        } else {
            this.f45514a.setOnVideoSizeChangedListener(null);
        }
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z9) {
        this.f45514a.setScreenOnWhilePlaying(z9);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.f45514a.setSurface(surface);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setVolume(float f10, float f11) {
        this.f45514a.setVolume(f10, f11);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setWakeMode(Context context, int i4) {
        this.f45514a.setWakeMode(context, i4);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        this.f45514a.start();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        this.f45514a.stop();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.f45514a.setDataSource(context, uri, map);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        this.f45514a.setDataSource(fileDescriptor);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        this.f45514a.setDataSource(str);
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        this.f45514a.setDataSource(iMediaDataSource);
    }
}
