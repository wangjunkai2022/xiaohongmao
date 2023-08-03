package com.google.android.play.core.appupdate;

import androidx.annotation.NonNull;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class d {

    /* compiled from: com.google.android.play:core@@1.10.3 */
    /* loaded from: classes2.dex */
    public static abstract class a {
        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(boolean z9);

        @NonNull
        public abstract a c(@d3.b int i4);
    }

    @NonNull
    public static d c(@d3.b int i4) {
        return d(i4).a();
    }

    @NonNull
    public static a d(@d3.b int i4) {
        y yVar = new y();
        yVar.c(i4);
        yVar.b(false);
        return yVar;
    }

    public abstract boolean a();

    @d3.b
    public abstract int b();
}
