package com.ksyun.media.player;

import android.os.Bundle;
import com.ksyun.media.player.IMediaPlayer;
import com.ksyun.media.player.misc.IMediaDataSource;

/* compiled from: AbstractMediaPlayer.java */
/* loaded from: classes3.dex */
public abstract class a implements IMediaPlayer {
    private IMediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener;
    private IMediaPlayer.OnCompletionListener mOnCompletionListener;
    private IMediaPlayer.OnErrorListener mOnErrorListener;
    private IMediaPlayer.OnInfoListener mOnInfoListener;
    private IMediaPlayer.OnLogEventListener mOnLogEventListener;
    private IMediaPlayer.OnMessageListener mOnMessageListener;
    private IMediaPlayer.OnPreparedListener mOnPreparedListener;
    private IMediaPlayer.OnSeekCompleteListener mOnSeekCompleteListener;
    private IMediaPlayer.OnTimedTextListener mOnTimedTextListener;
    private IMediaPlayer.OnVideoSizeChangedListener mOnVideoSizeChangedListener;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyMessageInfo(Bundle bundle) {
        IMediaPlayer.OnMessageListener onMessageListener = this.mOnMessageListener;
        if (onMessageListener != null) {
            onMessageListener.onMessage(this, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnBufferingUpdate(int i4) {
        IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = this.mOnBufferingUpdateListener;
        if (onBufferingUpdateListener != null) {
            onBufferingUpdateListener.onBufferingUpdate(this, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnCompletion() {
        IMediaPlayer.OnCompletionListener onCompletionListener = this.mOnCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean notifyOnError(int i4, int i10) {
        IMediaPlayer.OnErrorListener onErrorListener = this.mOnErrorListener;
        return onErrorListener != null && onErrorListener.onError(this, i4, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean notifyOnInfo(int i4, int i10) {
        IMediaPlayer.OnInfoListener onInfoListener = this.mOnInfoListener;
        return onInfoListener != null && onInfoListener.onInfo(this, i4, i10);
    }

    public final void notifyOnLogEvent(String str) {
        IMediaPlayer.OnLogEventListener onLogEventListener = this.mOnLogEventListener;
        if (onLogEventListener != null) {
            onLogEventListener.onLogEvent(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnPrepared() {
        IMediaPlayer.OnPreparedListener onPreparedListener = this.mOnPreparedListener;
        if (onPreparedListener != null) {
            onPreparedListener.onPrepared(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnSeekComplete() {
        IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener = this.mOnSeekCompleteListener;
        if (onSeekCompleteListener != null) {
            onSeekCompleteListener.onSeekComplete(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnTimedText(String str) {
        IMediaPlayer.OnTimedTextListener onTimedTextListener = this.mOnTimedTextListener;
        if (onTimedTextListener != null) {
            onTimedTextListener.onTimedText(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyOnVideoSizeChanged(int i4, int i10, int i11, int i12) {
        IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = this.mOnVideoSizeChangedListener;
        if (onVideoSizeChangedListener != null) {
            onVideoSizeChangedListener.onVideoSizeChanged(this, i4, i10, i11, i12);
        }
    }

    public void resetListeners() {
        this.mOnPreparedListener = null;
        this.mOnBufferingUpdateListener = null;
        this.mOnCompletionListener = null;
        this.mOnSeekCompleteListener = null;
        this.mOnVideoSizeChangedListener = null;
        this.mOnErrorListener = null;
        this.mOnInfoListener = null;
        this.mOnLogEventListener = null;
        this.mOnMessageListener = null;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        throw new UnsupportedOperationException();
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnBufferingUpdateListener(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnBufferingUpdateListener = onBufferingUpdateListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public final void setOnLogEventListener(IMediaPlayer.OnLogEventListener onLogEventListener) {
        this.mOnLogEventListener = onLogEventListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnMessageListener(IMediaPlayer.OnMessageListener onMessageListener) {
        this.mOnMessageListener = onMessageListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnSeekCompleteListener(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnTimedTextListener(IMediaPlayer.OnTimedTextListener onTimedTextListener) {
        this.mOnTimedTextListener = onTimedTextListener;
    }

    @Override // com.ksyun.media.player.IMediaPlayer
    public final void setOnVideoSizeChangedListener(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }
}
