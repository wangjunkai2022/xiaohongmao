package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import androidx.media.AudioAttributesCompat;
import java.util.Objects;

/* loaded from: classes.dex */
public class AudioFocusRequestCompat {
    static final AudioAttributesCompat FOCUS_DEFAULT_ATTR = new AudioAttributesCompat.Builder().setUsage(1).build();
    private final AudioAttributesCompat mAudioAttributesCompat;
    private final Handler mFocusChangeHandler;
    private final int mFocusGain;
    private final Object mFrameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
    private final boolean mPauseOnDuck;

    /* loaded from: classes.dex */
    public static final class Builder {
        private AudioAttributesCompat mAudioAttributesCompat;
        private Handler mFocusChangeHandler;
        private int mFocusGain;
        private AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
        private boolean mPauseOnDuck;

        public Builder(int i4) {
            this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
            setFocusGain(i4);
        }

        private static boolean isValidFocusGain(int i4) {
            return i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4;
        }

        public AudioFocusRequestCompat build() {
            if (this.mOnAudioFocusChangeListener != null) {
                return new AudioFocusRequestCompat(this.mFocusGain, this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, this.mPauseOnDuck);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        @NonNull
        public Builder setAudioAttributes(@NonNull AudioAttributesCompat audioAttributesCompat) {
            Objects.requireNonNull(audioAttributesCompat, "Illegal null AudioAttributes");
            this.mAudioAttributesCompat = audioAttributesCompat;
            return this;
        }

        @NonNull
        public Builder setFocusGain(int i4) {
            if (isValidFocusGain(i4)) {
                this.mFocusGain = i4;
                return this;
            }
            throw new IllegalArgumentException("Illegal audio focus gain type " + i4);
        }

        @NonNull
        public Builder setOnAudioFocusChangeListener(@NonNull AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            return setOnAudioFocusChangeListener(onAudioFocusChangeListener, new Handler(Looper.getMainLooper()));
        }

        @NonNull
        public Builder setWillPauseWhenDucked(boolean z9) {
            this.mPauseOnDuck = z9;
            return this;
        }

        @NonNull
        public Builder setOnAudioFocusChangeListener(@NonNull AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, @NonNull Handler handler) {
            if (onAudioFocusChangeListener != null) {
                if (handler != null) {
                    this.mOnAudioFocusChangeListener = onAudioFocusChangeListener;
                    this.mFocusChangeHandler = handler;
                    return this;
                }
                throw new IllegalArgumentException("Handler must not be null");
            }
            throw new IllegalArgumentException("OnAudioFocusChangeListener must not be null");
        }

        public Builder(@NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
            this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
            if (audioFocusRequestCompat != null) {
                this.mFocusGain = audioFocusRequestCompat.getFocusGain();
                this.mOnAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
                this.mFocusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
                this.mAudioAttributesCompat = audioFocusRequestCompat.getAudioAttributesCompat();
                this.mPauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
                return;
            }
            throw new IllegalArgumentException("AudioFocusRequestCompat to copy must not be null");
        }
    }

    /* loaded from: classes.dex */
    private static class OnAudioFocusChangeListenerHandlerCompat implements Handler.Callback, AudioManager.OnAudioFocusChangeListener {
        private static final int FOCUS_CHANGE = 2782386;
        private final Handler mHandler;
        private final AudioManager.OnAudioFocusChangeListener mListener;

        OnAudioFocusChangeListenerHandlerCompat(@NonNull AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, @NonNull Handler handler) {
            this.mListener = onAudioFocusChangeListener;
            this.mHandler = new Handler(handler.getLooper(), this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == FOCUS_CHANGE) {
                this.mListener.onAudioFocusChange(message.arg1);
                return true;
            }
            return false;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i4) {
            Handler handler = this.mHandler;
            handler.sendMessage(Message.obtain(handler, FOCUS_CHANGE, i4, 0));
        }
    }

    AudioFocusRequestCompat(int i4, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributesCompat audioAttributesCompat, boolean z9) {
        this.mFocusGain = i4;
        this.mFocusChangeHandler = handler;
        this.mAudioAttributesCompat = audioAttributesCompat;
        this.mPauseOnDuck = z9;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26 && handler.getLooper() != Looper.getMainLooper()) {
            this.mOnAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(onAudioFocusChangeListener, handler);
        } else {
            this.mOnAudioFocusChangeListener = onAudioFocusChangeListener;
        }
        if (i10 >= 26) {
            this.mFrameworkAudioFocusRequest = new AudioFocusRequest.Builder(i4).setAudioAttributes(getAudioAttributes()).setWillPauseWhenDucked(z9).setOnAudioFocusChangeListener(this.mOnAudioFocusChangeListener, handler).build();
        } else {
            this.mFrameworkAudioFocusRequest = null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudioFocusRequestCompat) {
            AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
            return this.mFocusGain == audioFocusRequestCompat.mFocusGain && this.mPauseOnDuck == audioFocusRequestCompat.mPauseOnDuck && ObjectsCompat.equals(this.mOnAudioFocusChangeListener, audioFocusRequestCompat.mOnAudioFocusChangeListener) && ObjectsCompat.equals(this.mFocusChangeHandler, audioFocusRequestCompat.mFocusChangeHandler) && ObjectsCompat.equals(this.mAudioAttributesCompat, audioFocusRequestCompat.mAudioAttributesCompat);
        }
        return false;
    }

    @RequiresApi(21)
    AudioAttributes getAudioAttributes() {
        AudioAttributesCompat audioAttributesCompat = this.mAudioAttributesCompat;
        if (audioAttributesCompat != null) {
            return (AudioAttributes) audioAttributesCompat.unwrap();
        }
        return null;
    }

    @NonNull
    public AudioAttributesCompat getAudioAttributesCompat() {
        return this.mAudioAttributesCompat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    public AudioFocusRequest getAudioFocusRequest() {
        return (AudioFocusRequest) this.mFrameworkAudioFocusRequest;
    }

    @NonNull
    public Handler getFocusChangeHandler() {
        return this.mFocusChangeHandler;
    }

    public int getFocusGain() {
        return this.mFocusGain;
    }

    @NonNull
    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.mOnAudioFocusChangeListener;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Integer.valueOf(this.mFocusGain), this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, Boolean.valueOf(this.mPauseOnDuck));
    }

    public boolean willPauseWhenDucked() {
        return this.mPauseOnDuck;
    }
}
