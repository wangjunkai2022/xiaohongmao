package com.ksyun.media.player;

import android.view.View;

/* loaded from: classes3.dex */
public interface IMediaController {

    /* loaded from: classes3.dex */
    public interface MediaPlayerControl {
        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        int getBufferPercentage();

        long getCurrentPosition();

        long getDuration();

        boolean isPlaying();

        void pause();

        void seekTo(long j4);

        void start();
    }

    void hide();

    boolean isShowing();

    void onPause();

    void onStart();

    void setAnchorView(View view);

    void setEnabled(boolean z9);

    void setMediaPlayer(MediaPlayerControl mediaPlayerControl);

    void show();
}
