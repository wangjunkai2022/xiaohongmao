package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.i;
import com.google.android.exoplayer2.util.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();
    public final List<c> events;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Parcelable.Creator<SpliceScheduleCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SpliceScheduleCommand[] newArray(int i4) {
            return new SpliceScheduleCommand[i4];
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f24150a;

        /* renamed from: b  reason: collision with root package name */
        public final long f24151b;

        /* synthetic */ b(int i4, long j4, a aVar) {
            this(i4, j4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.f24150a);
            parcel.writeLong(this.f24151b);
        }

        private b(int i4, long j4) {
            this.f24150a = i4;
            this.f24151b = j4;
        }
    }

    /* synthetic */ SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceScheduleCommand parseFromSection(h0 h0Var) {
        int G = h0Var.G();
        ArrayList arrayList = new ArrayList(G);
        for (int i4 = 0; i4 < G; i4++) {
            arrayList.add(c.e(h0Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.events.get(i10).f(parcel);
        }
    }

    private SpliceScheduleCommand(List<c> list) {
        this.events = Collections.unmodifiableList(list);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            arrayList.add(c.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f24152a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f24153b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f24154c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f24155d;

        /* renamed from: e  reason: collision with root package name */
        public final long f24156e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b> f24157f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f24158g;

        /* renamed from: h  reason: collision with root package name */
        public final long f24159h;

        /* renamed from: i  reason: collision with root package name */
        public final int f24160i;

        /* renamed from: j  reason: collision with root package name */
        public final int f24161j;

        /* renamed from: k  reason: collision with root package name */
        public final int f24162k;

        private c(long j4, boolean z9, boolean z10, boolean z11, List<b> list, long j10, boolean z12, long j11, int i4, int i10, int i11) {
            this.f24152a = j4;
            this.f24153b = z9;
            this.f24154c = z10;
            this.f24155d = z11;
            this.f24157f = Collections.unmodifiableList(list);
            this.f24156e = j10;
            this.f24158g = z12;
            this.f24159h = j11;
            this.f24160i = i4;
            this.f24161j = i10;
            this.f24162k = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(h0 h0Var) {
            ArrayList arrayList;
            boolean z9;
            long j4;
            boolean z10;
            long j10;
            int i4;
            int i10;
            int i11;
            boolean z11;
            boolean z12;
            long j11;
            long I = h0Var.I();
            boolean z13 = (h0Var.G() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z13) {
                arrayList = arrayList2;
                z9 = false;
                j4 = i.f23649b;
                z10 = false;
                j10 = i.f23649b;
                i4 = 0;
                i10 = 0;
                i11 = 0;
                z11 = false;
            } else {
                int G = h0Var.G();
                boolean z14 = (G & 128) != 0;
                boolean z15 = (G & 64) != 0;
                boolean z16 = (G & 32) != 0;
                long I2 = z15 ? h0Var.I() : i.f23649b;
                if (!z15) {
                    int G2 = h0Var.G();
                    ArrayList arrayList3 = new ArrayList(G2);
                    for (int i12 = 0; i12 < G2; i12++) {
                        arrayList3.add(new b(h0Var.G(), h0Var.I(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z16) {
                    long G3 = h0Var.G();
                    boolean z17 = (128 & G3) != 0;
                    j11 = ((((G3 & 1) << 32) | h0Var.I()) * 1000) / 90;
                    z12 = z17;
                } else {
                    z12 = false;
                    j11 = i.f23649b;
                }
                int M = h0Var.M();
                int G4 = h0Var.G();
                z11 = z15;
                i11 = h0Var.G();
                j10 = j11;
                arrayList = arrayList2;
                long j12 = I2;
                i4 = M;
                i10 = G4;
                j4 = j12;
                boolean z18 = z14;
                z10 = z12;
                z9 = z18;
            }
            return new c(I, z13, z9, z11, arrayList, j4, z10, j10, i4, i10, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(Parcel parcel) {
            parcel.writeLong(this.f24152a);
            parcel.writeByte(this.f24153b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f24154c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f24155d ? (byte) 1 : (byte) 0);
            int size = this.f24157f.size();
            parcel.writeInt(size);
            for (int i4 = 0; i4 < size; i4++) {
                this.f24157f.get(i4).d(parcel);
            }
            parcel.writeLong(this.f24156e);
            parcel.writeByte(this.f24158g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f24159h);
            parcel.writeInt(this.f24160i);
            parcel.writeInt(this.f24161j);
            parcel.writeInt(this.f24162k);
        }

        private c(Parcel parcel) {
            this.f24152a = parcel.readLong();
            this.f24153b = parcel.readByte() == 1;
            this.f24154c = parcel.readByte() == 1;
            this.f24155d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i4 = 0; i4 < readInt; i4++) {
                arrayList.add(b.c(parcel));
            }
            this.f24157f = Collections.unmodifiableList(arrayList);
            this.f24156e = parcel.readLong();
            this.f24158g = parcel.readByte() == 1;
            this.f24159h = parcel.readLong();
            this.f24160i = parcel.readInt();
            this.f24161j = parcel.readInt();
            this.f24162k = parcel.readInt();
        }
    }
}
