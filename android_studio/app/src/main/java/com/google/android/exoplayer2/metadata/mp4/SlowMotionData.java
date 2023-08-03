package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.z0;
import com.google.common.base.w;
import com.google.common.collect.g0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public final class SlowMotionData implements Metadata.Entry {
    public static final Parcelable.Creator<SlowMotionData> CREATOR = new a();
    public final List<Segment> segments;

    /* loaded from: classes2.dex */
    public static final class Segment implements Parcelable {
        public static final Comparator<Segment> BY_START_THEN_END_THEN_DIVISOR = com.google.android.exoplayer2.metadata.mp4.a.f24146a;
        public static final Parcelable.Creator<Segment> CREATOR = new a();
        public final long endTimeMs;
        public final int speedDivisor;
        public final long startTimeMs;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<Segment> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Segment createFromParcel(Parcel parcel) {
                return new Segment(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Segment[] newArray(int i4) {
                return new Segment[i4];
            }
        }

        public Segment(long j4, long j10, int i4) {
            com.google.android.exoplayer2.util.a.a(j4 < j10);
            this.startTimeMs = j4;
            this.endTimeMs = j10;
            this.speedDivisor = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$static$0(Segment segment, Segment segment2) {
            return g0.n().g(segment.startTimeMs, segment2.startTimeMs).g(segment.endTimeMs, segment2.endTimeMs).f(segment.speedDivisor, segment2.speedDivisor).m();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Segment.class != obj.getClass()) {
                return false;
            }
            Segment segment = (Segment) obj;
            return this.startTimeMs == segment.startTimeMs && this.endTimeMs == segment.endTimeMs && this.speedDivisor == segment.speedDivisor;
        }

        public int hashCode() {
            return w.b(Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        public String toString() {
            return z0.I("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeLong(this.startTimeMs);
            parcel.writeLong(this.endTimeMs);
            parcel.writeInt(this.speedDivisor);
        }
    }

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<SlowMotionData> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SlowMotionData createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, Segment.class.getClassLoader());
            return new SlowMotionData(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SlowMotionData[] newArray(int i4) {
            return new SlowMotionData[i4];
        }
    }

    public SlowMotionData(List<Segment> list) {
        this.segments = list;
        com.google.android.exoplayer2.util.a.a(!doSegmentsOverlap(list));
    }

    private static boolean doSegmentsOverlap(List<Segment> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j4 = list.get(0).endTimeMs;
        for (int i4 = 1; i4 < list.size(); i4++) {
            if (list.get(i4).startTimeMs < j4) {
                return true;
            }
            j4 = list.get(i4).endTimeMs;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SlowMotionData.class != obj.getClass()) {
            return false;
        }
        return this.segments.equals(((SlowMotionData) obj).segments);
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
        return this.segments.hashCode();
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(f1.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        String valueOf = String.valueOf(this.segments);
        StringBuilder sb = new StringBuilder(valueOf.length() + 21);
        sb.append("SlowMotion: segments=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeList(this.segments);
    }
}
