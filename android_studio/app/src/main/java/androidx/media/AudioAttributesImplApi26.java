package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImplApi21;

@RequiresApi(26)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Builder extends AudioAttributesImplApi21.Builder {
        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
        }

        @Override // androidx.media.AudioAttributesImplApi21.Builder, androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi26(this.mFwkBuilder.build());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(Object obj) {
            super(obj);
        }

        @Override // androidx.media.AudioAttributesImplApi21.Builder, androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public Builder setUsage(int i4) {
            this.mFwkBuilder.setUsage(i4);
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributesImplApi26() {
    }

    @Override // androidx.media.AudioAttributesImplApi21, androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return this.mAudioAttributes.getVolumeControlStream();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }
}
