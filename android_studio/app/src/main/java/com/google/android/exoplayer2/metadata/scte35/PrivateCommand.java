package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.z0;

/* loaded from: classes2.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<PrivateCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PrivateCommand[] newArray(int i4) {
            return new PrivateCommand[i4];
        }
    }

    /* synthetic */ PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PrivateCommand parseFromSection(h0 h0Var, int i4, long j4) {
        long I = h0Var.I();
        int i10 = i4 - 4;
        byte[] bArr = new byte[i10];
        h0Var.k(bArr, 0, i10);
        return new PrivateCommand(I, bArr, j4);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeLong(this.ptsAdjustment);
        parcel.writeLong(this.identifier);
        parcel.writeByteArray(this.commandBytes);
    }

    private PrivateCommand(long j4, byte[] bArr, long j10) {
        this.ptsAdjustment = j10;
        this.identifier = j4;
        this.commandBytes = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.ptsAdjustment = parcel.readLong();
        this.identifier = parcel.readLong();
        this.commandBytes = (byte[]) z0.k(parcel.createByteArray());
    }
}
