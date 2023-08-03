package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.u;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class i<T> extends a<T> {

    /* renamed from: b  reason: collision with root package name */
    private boolean f28989b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<Integer> f28990c;

    @u2.a
    protected i(@NonNull DataHolder dataHolder) {
        super(dataHolder);
        this.f28989b = false;
    }

    private final void k() {
        synchronized (this) {
            if (!this.f28989b) {
                int count = ((DataHolder) u.k(this.f28978a)).getCount();
                ArrayList<Integer> arrayList = new ArrayList<>();
                this.f28990c = arrayList;
                if (count > 0) {
                    arrayList.add(0);
                    String d4 = d();
                    String string = this.f28978a.getString(d4, 0, this.f28978a.getWindowIndex(0));
                    for (int i4 = 1; i4 < count; i4++) {
                        int windowIndex = this.f28978a.getWindowIndex(i4);
                        String string2 = this.f28978a.getString(d4, i4, windowIndex);
                        if (string2 != null) {
                            if (!string2.equals(string)) {
                                this.f28990c.add(Integer.valueOf(i4));
                                string = string2;
                            }
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(d4).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(d4);
                            sb.append(", at row: ");
                            sb.append(i4);
                            sb.append(", for window: ");
                            sb.append(windowIndex);
                            throw new NullPointerException(sb.toString());
                        }
                    }
                }
                this.f28989b = true;
            }
        }
    }

    @Nullable
    @u2.a
    protected String a() {
        return null;
    }

    @NonNull
    @u2.a
    protected abstract T b(int i4, int i10);

    @NonNull
    @u2.a
    protected abstract String d();

    @Override // com.google.android.gms.common.data.a, com.google.android.gms.common.data.b
    @NonNull
    @u2.a
    public final T get(int i4) {
        int intValue;
        int intValue2;
        k();
        int h4 = h(i4);
        int i10 = 0;
        if (i4 >= 0 && i4 != this.f28990c.size()) {
            if (i4 == this.f28990c.size() - 1) {
                intValue = ((DataHolder) u.k(this.f28978a)).getCount();
                intValue2 = this.f28990c.get(i4).intValue();
            } else {
                intValue = this.f28990c.get(i4 + 1).intValue();
                intValue2 = this.f28990c.get(i4).intValue();
            }
            int i11 = intValue - intValue2;
            if (i11 == 1) {
                int h10 = h(i4);
                int windowIndex = ((DataHolder) u.k(this.f28978a)).getWindowIndex(h10);
                String a10 = a();
                if (a10 == null || this.f28978a.getString(a10, h10, windowIndex) != null) {
                    i10 = 1;
                }
            } else {
                i10 = i11;
            }
        }
        return b(h4, i10);
    }

    @Override // com.google.android.gms.common.data.a, com.google.android.gms.common.data.b
    @u2.a
    public int getCount() {
        k();
        return this.f28990c.size();
    }

    final int h(int i4) {
        if (i4 >= 0 && i4 < this.f28990c.size()) {
            return this.f28990c.get(i4).intValue();
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("Position ");
        sb.append(i4);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }
}
