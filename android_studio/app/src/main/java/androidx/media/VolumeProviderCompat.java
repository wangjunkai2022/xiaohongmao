package androidx.media;

import android.media.VolumeProvider;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private Callback mCallback;
    private final String mControlId;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private VolumeProvider mVolumeProviderFwk;

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i4, int i10, int i11) {
        this(i4, i10, i11, null);
    }

    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    public final int getVolumeControl() {
        return this.mControlType;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final String getVolumeControlId() {
        return this.mControlId;
    }

    public Object getVolumeProvider() {
        if (this.mVolumeProviderFwk == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mVolumeProviderFwk = new VolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume, this.mControlId) { // from class: androidx.media.VolumeProviderCompat.1
                    @Override // android.media.VolumeProvider
                    public void onAdjustVolume(int i4) {
                        VolumeProviderCompat.this.onAdjustVolume(i4);
                    }

                    @Override // android.media.VolumeProvider
                    public void onSetVolumeTo(int i4) {
                        VolumeProviderCompat.this.onSetVolumeTo(i4);
                    }
                };
            } else {
                this.mVolumeProviderFwk = new VolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume) { // from class: androidx.media.VolumeProviderCompat.2
                    @Override // android.media.VolumeProvider
                    public void onAdjustVolume(int i4) {
                        VolumeProviderCompat.this.onAdjustVolume(i4);
                    }

                    @Override // android.media.VolumeProvider
                    public void onSetVolumeTo(int i4) {
                        VolumeProviderCompat.this.onSetVolumeTo(i4);
                    }
                };
            }
        }
        return this.mVolumeProviderFwk;
    }

    public void onAdjustVolume(int i4) {
    }

    public void onSetVolumeTo(int i4) {
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public final void setCurrentVolume(int i4) {
        this.mCurrentVolume = i4;
        ((VolumeProvider) getVolumeProvider()).setCurrentVolume(i4);
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onVolumeChanged(this);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public VolumeProviderCompat(int i4, int i10, int i11, @Nullable String str) {
        this.mControlType = i4;
        this.mMaxVolume = i10;
        this.mCurrentVolume = i11;
        this.mControlId = str;
    }
}
