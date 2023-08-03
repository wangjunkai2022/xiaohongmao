package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.u0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new a();
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<b> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<SpliceInsertCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SpliceInsertCommand[] newArray(int i4) {
            return new SpliceInsertCommand[i4];
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f24147a;

        /* renamed from: b  reason: collision with root package name */
        public final long f24148b;

        /* renamed from: c  reason: collision with root package name */
        public final long f24149c;

        /* synthetic */ b(int i4, long j4, long j10, a aVar) {
            this(i4, j4, j10);
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f24147a);
            parcel.writeLong(this.f24148b);
            parcel.writeLong(this.f24149c);
        }

        private b(int i4, long j4, long j10) {
            this.f24147a = i4;
            this.f24148b = j4;
            this.f24149c = j10;
        }
    }

    /* synthetic */ SpliceInsertCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceInsertCommand parseFromSection(h0 h0Var, long j4, u0 u0Var) {
        List list;
        boolean z9;
        boolean z10;
        long j10;
        boolean z11;
        long j11;
        int i4;
        int i10;
        int i11;
        boolean z12;
        boolean z13;
        long j12;
        long I = h0Var.I();
        boolean z14 = (h0Var.G() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (z14) {
            list = emptyList;
            z9 = false;
            z10 = false;
            j10 = i.f23649b;
            z11 = false;
            j11 = i.f23649b;
            i4 = 0;
            i10 = 0;
            i11 = 0;
            z12 = false;
        } else {
            int G = h0Var.G();
            boolean z15 = (G & 128) != 0;
            boolean z16 = (G & 64) != 0;
            boolean z17 = (G & 32) != 0;
            boolean z18 = (G & 16) != 0;
            long parseSpliceTime = (!z16 || z18) ? i.f23649b : TimeSignalCommand.parseSpliceTime(h0Var, j4);
            if (!z16) {
                int G2 = h0Var.G();
                ArrayList arrayList = new ArrayList(G2);
                for (int i12 = 0; i12 < G2; i12++) {
                    int G3 = h0Var.G();
                    long parseSpliceTime2 = !z18 ? TimeSignalCommand.parseSpliceTime(h0Var, j4) : i.f23649b;
                    arrayList.add(new b(G3, parseSpliceTime2, u0Var.b(parseSpliceTime2), null));
                }
                emptyList = arrayList;
            }
            if (z17) {
                long G4 = h0Var.G();
                boolean z19 = (128 & G4) != 0;
                j12 = ((((G4 & 1) << 32) | h0Var.I()) * 1000) / 90;
                z13 = z19;
            } else {
                z13 = false;
                j12 = i.f23649b;
            }
            i4 = h0Var.M();
            z12 = z16;
            i10 = h0Var.G();
            i11 = h0Var.G();
            list = emptyList;
            long j13 = parseSpliceTime;
            z11 = z13;
            j11 = j12;
            z10 = z18;
            z9 = z15;
            j10 = j13;
        }
        return new SpliceInsertCommand(I, z14, z9, z12, z10, j10, u0Var.b(j10), list, z11, j11, i4, i10, i11);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.componentSpliceList.get(i10).b(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }

    private SpliceInsertCommand(long j4, boolean z9, boolean z10, boolean z11, boolean z12, long j10, long j11, List<b> list, boolean z13, long j12, int i4, int i10, int i11) {
        this.spliceEventId = j4;
        this.spliceEventCancelIndicator = z9;
        this.outOfNetworkIndicator = z10;
        this.programSpliceFlag = z11;
        this.spliceImmediateFlag = z12;
        this.programSplicePts = j10;
        this.programSplicePlaybackPositionUs = j11;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z13;
        this.breakDurationUs = j12;
        this.uniqueProgramId = i4;
        this.availNum = i10;
        this.availsExpected = i11;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            arrayList.add(b.a(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }
}
