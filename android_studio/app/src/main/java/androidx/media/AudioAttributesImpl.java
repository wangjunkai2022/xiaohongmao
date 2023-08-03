package androidx.media;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcelable;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface AudioAttributesImpl extends VersionedParcelable {

    /* loaded from: classes.dex */
    public interface Builder {
        @NonNull
        AudioAttributesImpl build();

        @NonNull
        Builder setContentType(int i4);

        @NonNull
        Builder setFlags(int i4);

        @NonNull
        Builder setLegacyStreamType(int i4);

        @NonNull
        Builder setUsage(int i4);
    }

    @Nullable
    Object getAudioAttributes();

    int getContentType();

    int getFlags();

    int getLegacyStreamType();

    int getRawLegacyStreamType();

    int getUsage();

    int getVolumeControlStream();
}
