package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.imageutils.c;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.common.primitives.g;

/* loaded from: classes2.dex */
public final class MotionPhotoMetadata implements Metadata.Entry {
    public static final Parcelable.Creator<MotionPhotoMetadata> CREATOR = new a();
    public final long photoPresentationTimestampUs;
    public final long photoSize;
    public final long photoStartPosition;
    public final long videoSize;
    public final long videoStartPosition;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<MotionPhotoMetadata> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MotionPhotoMetadata createFromParcel(Parcel parcel) {
            return new MotionPhotoMetadata(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MotionPhotoMetadata[] newArray(int i4) {
            return new MotionPhotoMetadata[i4];
        }
    }

    /* synthetic */ MotionPhotoMetadata(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MotionPhotoMetadata.class != obj.getClass()) {
            return false;
        }
        MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
        return this.photoStartPosition == motionPhotoMetadata.photoStartPosition && this.photoSize == motionPhotoMetadata.photoSize && this.photoPresentationTimestampUs == motionPhotoMetadata.photoPresentationTimestampUs && this.videoStartPosition == motionPhotoMetadata.videoStartPosition && this.videoSize == motionPhotoMetadata.videoSize;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return com.google.android.exoplayer2.metadata.a.a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ Format getWrappedMetadataFormat() {
        return com.google.android.exoplayer2.metadata.a.b(this);
    }

    public int hashCode() {
        return ((((((((527 + g.k(this.photoStartPosition)) * 31) + g.k(this.photoSize)) * 31) + g.k(this.photoPresentationTimestampUs)) * 31) + g.k(this.videoStartPosition)) * 31) + g.k(this.videoSize);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(f1.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        long j4 = this.photoStartPosition;
        long j10 = this.photoSize;
        long j11 = this.photoPresentationTimestampUs;
        long j12 = this.videoStartPosition;
        long j13 = this.videoSize;
        StringBuilder sb = new StringBuilder((int) c.f13391f);
        sb.append("Motion photo metadata: photoStartPosition=");
        sb.append(j4);
        sb.append(", photoSize=");
        sb.append(j10);
        sb.append(", photoPresentationTimestampUs=");
        sb.append(j11);
        sb.append(", videoStartPosition=");
        sb.append(j12);
        sb.append(", videoSize=");
        sb.append(j13);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeLong(this.photoStartPosition);
        parcel.writeLong(this.photoSize);
        parcel.writeLong(this.photoPresentationTimestampUs);
        parcel.writeLong(this.videoStartPosition);
        parcel.writeLong(this.videoSize);
    }

    public MotionPhotoMetadata(long j4, long j10, long j11, long j12, long j13) {
        this.photoStartPosition = j4;
        this.photoSize = j10;
        this.photoPresentationTimestampUs = j11;
        this.videoStartPosition = j12;
        this.videoSize = j13;
    }

    private MotionPhotoMetadata(Parcel parcel) {
        this.photoStartPosition = parcel.readLong();
        this.photoSize = parcel.readLong();
        this.photoPresentationTimestampUs = parcel.readLong();
        this.videoStartPosition = parcel.readLong();
        this.videoSize = parcel.readLong();
    }
}
