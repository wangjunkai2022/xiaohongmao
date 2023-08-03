package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "DataHolderCreator", validate = true)
@u2.a
@KeepName
/* loaded from: classes2.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<DataHolder> CREATOR = new q();
    private static final a zaf = new n(new String[0], null);
    @SafeParcelable.g(id = 1000)
    final int zaa;
    Bundle zab;
    int[] zac;
    int zad;
    boolean zae;
    @SafeParcelable.c(getter = "getColumns", id = 1)
    private final String[] zag;
    @SafeParcelable.c(getter = "getWindows", id = 2)
    private final CursorWindow[] zah;
    @SafeParcelable.c(getter = "getStatusCode", id = 3)
    private final int zai;
    @Nullable
    @SafeParcelable.c(getter = "getMetadata", id = 4)
    private final Bundle zaj;
    private boolean zak;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f28975a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<HashMap<String, Object>> f28976b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        private final HashMap<Object, Integer> f28977c = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(String[] strArr, String str, o oVar) {
            this.f28975a = (String[]) u.k(strArr);
        }

        @NonNull
        @u2.a
        public DataHolder a(int i4) {
            return new DataHolder(this, i4);
        }

        @NonNull
        @u2.a
        public DataHolder b(int i4, @NonNull Bundle bundle) {
            return new DataHolder(this, i4, bundle);
        }

        @NonNull
        @u2.a
        public a c(@NonNull ContentValues contentValues) {
            com.google.android.gms.common.internal.d.c(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return d(hashMap);
        }

        @NonNull
        public a d(@NonNull HashMap<String, Object> hashMap) {
            com.google.android.gms.common.internal.d.c(hashMap);
            this.f28976b.add(hashMap);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public DataHolder(@SafeParcelable.e(id = 1000) int i4, @SafeParcelable.e(id = 1) String[] strArr, @SafeParcelable.e(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.e(id = 3) int i10, @Nullable @SafeParcelable.e(id = 4) Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = i4;
        this.zag = strArr;
        this.zah = cursorWindowArr;
        this.zai = i10;
        this.zaj = bundle;
    }

    @NonNull
    @u2.a
    public static a builder(@NonNull String[] strArr) {
        return new a(strArr, null, null);
    }

    @NonNull
    @u2.a
    public static DataHolder empty(int i4) {
        return new DataHolder(zaf, i4, (Bundle) null);
    }

    private final void zae(String str, int i4) {
        Bundle bundle = this.zab;
        if (bundle != null && bundle.containsKey(str)) {
            if (!isClosed()) {
                if (i4 < 0 || i4 >= this.zad) {
                    throw new CursorIndexOutOfBoundsException(i4, this.zad);
                }
                return;
            }
            throw new IllegalArgumentException("Buffer is closed.");
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0144, code lost:
        if (r5 != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0146, code lost:
        r5 = new java.lang.StringBuilder(74);
        r5.append("Couldn't populate window data for row ");
        r5.append(r4);
        r5.append(" - allocating new window.");
        android.util.Log.d("DataHolder", r5.toString());
        r2.freeLastRow();
        r2 = new android.database.CursorWindow(false);
        r2.setStartPosition(r4);
        r2.setNumColumns(r13.f28975a.length);
        r3.add(r2);
        r4 = r4 - 1;
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x017a, code lost:
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0184, code lost:
        throw new com.google.android.gms.common.data.zad("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.database.CursorWindow[] zaf(com.google.android.gms.common.data.DataHolder.a r13, int r14) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.zaf(com.google.android.gms.common.data.DataHolder$a, int):android.database.CursorWindow[]");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @u2.a
    public void close() {
        synchronized (this) {
            if (!this.zae) {
                this.zae = true;
                int i4 = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.zah;
                    if (i4 >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i4].close();
                    i4++;
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zak && this.zah.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    @u2.a
    public boolean getBoolean(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return Long.valueOf(this.zah[i10].getLong(i4, this.zab.getInt(str))).longValue() == 1;
    }

    @NonNull
    @u2.a
    public byte[] getByteArray(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].getBlob(i4, this.zab.getInt(str));
    }

    @u2.a
    public int getCount() {
        return this.zad;
    }

    @u2.a
    public int getInteger(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].getInt(i4, this.zab.getInt(str));
    }

    @u2.a
    public long getLong(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].getLong(i4, this.zab.getInt(str));
    }

    @Nullable
    @u2.a
    public Bundle getMetadata() {
        return this.zaj;
    }

    @u2.a
    public int getStatusCode() {
        return this.zai;
    }

    @NonNull
    @u2.a
    public String getString(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].getString(i4, this.zab.getInt(str));
    }

    @u2.a
    public int getWindowIndex(int i4) {
        int length;
        int i10 = 0;
        u.q(i4 >= 0 && i4 < this.zad);
        while (true) {
            int[] iArr = this.zac;
            length = iArr.length;
            if (i10 >= length) {
                break;
            } else if (i4 < iArr[i10]) {
                i10--;
                break;
            } else {
                i10++;
            }
        }
        return i10 == length ? i10 - 1 : i10;
    }

    @u2.a
    public boolean hasColumn(@NonNull String str) {
        return this.zab.containsKey(str);
    }

    @u2.a
    public boolean hasNull(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].isNull(i4, this.zab.getInt(str));
    }

    @u2.a
    public boolean isClosed() {
        boolean z9;
        synchronized (this) {
            z9 = this.zae;
        }
        return z9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        int a10 = w2.a.a(parcel);
        w2.a.Z(parcel, 1, this.zag, false);
        w2.a.c0(parcel, 2, this.zah, i4, false);
        w2.a.F(parcel, 3, getStatusCode());
        w2.a.k(parcel, 4, getMetadata(), false);
        w2.a.F(parcel, 1000, this.zaa);
        w2.a.b(parcel, a10);
        if ((i4 & 1) != 0) {
            close();
        }
    }

    public final double zaa(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].getDouble(i4, this.zab.getInt(str));
    }

    public final float zab(@NonNull String str, int i4, int i10) {
        zae(str, i4);
        return this.zah[i10].getFloat(i4, this.zab.getInt(str));
    }

    public final void zac(@NonNull String str, int i4, int i10, @NonNull CharArrayBuffer charArrayBuffer) {
        zae(str, i4);
        this.zah[i10].copyStringToBuffer(i4, this.zab.getInt(str), charArrayBuffer);
    }

    public final void zad() {
        this.zab = new Bundle();
        int i4 = 0;
        int i10 = 0;
        while (true) {
            String[] strArr = this.zag;
            if (i10 >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i10], i10);
            i10++;
        }
        this.zac = new int[this.zah.length];
        int i11 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zah;
            if (i4 >= cursorWindowArr.length) {
                this.zad = i11;
                return;
            }
            this.zac[i4] = i11;
            i11 += this.zah[i4].getNumRows() - (i11 - cursorWindowArr[i4].getStartPosition());
            i4++;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @u2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DataHolder(@androidx.annotation.NonNull android.database.Cursor r8, int r9, @androidx.annotation.Nullable android.os.Bundle r10) {
        /*
            r7 = this;
            x2.a r0 = new x2.a
            r0.<init>(r8)
            java.lang.String[] r8 = r0.getColumnNames()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            int r2 = r0.getCount()     // Catch: java.lang.Throwable -> L76
            android.database.CursorWindow r3 = r0.getWindow()     // Catch: java.lang.Throwable -> L76
            r4 = 0
            r5 = 0
            if (r3 == 0) goto L2e
            int r6 = r3.getStartPosition()     // Catch: java.lang.Throwable -> L76
            if (r6 != 0) goto L2e
            r3.acquireReference()     // Catch: java.lang.Throwable -> L76
            r0.a(r4)     // Catch: java.lang.Throwable -> L76
            r1.add(r3)     // Catch: java.lang.Throwable -> L76
            int r3 = r3.getNumRows()     // Catch: java.lang.Throwable -> L76
            goto L2f
        L2e:
            r3 = 0
        L2f:
            if (r3 >= r2) goto L63
            boolean r6 = r0.moveToPosition(r3)     // Catch: java.lang.Throwable -> L76
            if (r6 == 0) goto L63
            android.database.CursorWindow r6 = r0.getWindow()     // Catch: java.lang.Throwable -> L76
            if (r6 == 0) goto L44
            r6.acquireReference()     // Catch: java.lang.Throwable -> L76
            r0.a(r4)     // Catch: java.lang.Throwable -> L76
            goto L4f
        L44:
            android.database.CursorWindow r6 = new android.database.CursorWindow     // Catch: java.lang.Throwable -> L76
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L76
            r6.setStartPosition(r3)     // Catch: java.lang.Throwable -> L76
            r0.fillWindow(r3, r6)     // Catch: java.lang.Throwable -> L76
        L4f:
            int r3 = r6.getNumRows()     // Catch: java.lang.Throwable -> L76
            if (r3 != 0) goto L56
            goto L63
        L56:
            r1.add(r6)     // Catch: java.lang.Throwable -> L76
            int r3 = r6.getStartPosition()     // Catch: java.lang.Throwable -> L76
            int r6 = r6.getNumRows()     // Catch: java.lang.Throwable -> L76
            int r3 = r3 + r6
            goto L2f
        L63:
            r0.close()
            int r0 = r1.size()
            android.database.CursorWindow[] r0 = new android.database.CursorWindow[r0]
            java.lang.Object[] r0 = r1.toArray(r0)
            android.database.CursorWindow[] r0 = (android.database.CursorWindow[]) r0
            r7.<init>(r8, r0, r9, r10)
            return
        L76:
            r8 = move-exception
            r0.close()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.<init>(android.database.Cursor, int, android.os.Bundle):void");
    }

    private DataHolder(a aVar, int i4, @Nullable Bundle bundle) {
        this(aVar.f28975a, zaf(aVar, -1), i4, (Bundle) null);
    }

    @u2.a
    public DataHolder(@NonNull String[] strArr, @NonNull CursorWindow[] cursorWindowArr, int i4, @Nullable Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = 1;
        this.zag = (String[]) u.k(strArr);
        this.zah = (CursorWindow[]) u.k(cursorWindowArr);
        this.zai = i4;
        this.zaj = bundle;
        zad();
    }
}
