package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.u0;

/* loaded from: classes2.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();
    public final long playbackPositionUs;
    public final long ptsTime;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<TimeSignalCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TimeSignalCommand[] newArray(int i4) {
            return new TimeSignalCommand[i4];
        }
    }

    /* synthetic */ TimeSignalCommand(long j4, long j10, a aVar) {
        this(j4, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSignalCommand parseFromSection(h0 h0Var, long j4, u0 u0Var) {
        long parseSpliceTime = parseSpliceTime(h0Var, j4);
        return new TimeSignalCommand(parseSpliceTime, u0Var.b(parseSpliceTime));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseSpliceTime(h0 h0Var, long j4) {
        long G = h0Var.G();
        return (128 & G) != 0 ? 8589934591L & ((((G & 1) << 32) | h0Var.I()) + j4) : i.f23649b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }

    private TimeSignalCommand(long j4, long j10) {
        this.ptsTime = j4;
        this.playbackPositionUs = j10;
    }
}
