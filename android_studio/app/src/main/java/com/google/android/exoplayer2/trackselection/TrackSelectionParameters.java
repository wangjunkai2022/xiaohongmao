package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;

/* loaded from: classes2.dex */
public class TrackSelectionParameters implements Parcelable {
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR;
    @Deprecated
    public static final TrackSelectionParameters DEFAULT;
    public static final TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;
    public final int disabledTextTrackSelectionFlags;
    public final ImmutableList<String> preferredAudioLanguages;
    public final int preferredAudioRoleFlags;
    public final ImmutableList<String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final boolean selectUndeterminedTextLanguage;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<TrackSelectionParameters> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TrackSelectionParameters[] newArray(int i4) {
            return new TrackSelectionParameters[i4];
        }
    }

    static {
        TrackSelectionParameters a10 = new b().a();
        DEFAULT_WITHOUT_CONTEXT = a10;
        DEFAULT = a10;
        CREATOR = new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackSelectionParameters(ImmutableList<String> immutableList, int i4, ImmutableList<String> immutableList2, int i10, boolean z9, int i11) {
        this.preferredAudioLanguages = immutableList;
        this.preferredAudioRoleFlags = i4;
        this.preferredTextLanguages = immutableList2;
        this.preferredTextRoleFlags = i10;
        this.selectUndeterminedTextLanguage = z9;
        this.disabledTextTrackSelectionFlags = i11;
    }

    public static TrackSelectionParameters getDefaults(Context context) {
        return new b(context).a();
    }

    public b buildUpon() {
        return new b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        return this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.disabledTextTrackSelectionFlags == trackSelectionParameters.disabledTextTrackSelectionFlags;
    }

    public int hashCode() {
        return ((((((((((this.preferredAudioLanguages.hashCode() + 31) * 31) + this.preferredAudioRoleFlags) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + this.disabledTextTrackSelectionFlags;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeList(this.preferredAudioLanguages);
        parcel.writeInt(this.preferredAudioRoleFlags);
        parcel.writeList(this.preferredTextLanguages);
        parcel.writeInt(this.preferredTextRoleFlags);
        z0.x1(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        ImmutableList<String> f25993a;

        /* renamed from: b  reason: collision with root package name */
        int f25994b;

        /* renamed from: c  reason: collision with root package name */
        ImmutableList<String> f25995c;

        /* renamed from: d  reason: collision with root package name */
        int f25996d;

        /* renamed from: e  reason: collision with root package name */
        boolean f25997e;

        /* renamed from: f  reason: collision with root package name */
        int f25998f;

        public b(Context context) {
            this();
            g(context);
        }

        @RequiresApi(19)
        private void h(Context context) {
            CaptioningManager captioningManager;
            if ((z0.f27743a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f25996d = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f25995c = ImmutableList.of(z0.e0(locale));
                }
            }
        }

        public TrackSelectionParameters a() {
            return new TrackSelectionParameters(this.f25993a, this.f25994b, this.f25995c, this.f25996d, this.f25997e, this.f25998f);
        }

        public b b(int i4) {
            this.f25998f = i4;
            return this;
        }

        public b c(@Nullable String str) {
            if (str == null) {
                return d(new String[0]);
            }
            return d(str);
        }

        public b d(String... strArr) {
            ImmutableList.a builder = ImmutableList.builder();
            for (String str : (String[]) com.google.android.exoplayer2.util.a.g(strArr)) {
                builder.g(z0.Q0((String) com.google.android.exoplayer2.util.a.g(str)));
            }
            this.f25993a = builder.e();
            return this;
        }

        public b e(int i4) {
            this.f25994b = i4;
            return this;
        }

        public b f(@Nullable String str) {
            if (str == null) {
                return i(new String[0]);
            }
            return i(str);
        }

        public b g(Context context) {
            if (z0.f27743a >= 19) {
                h(context);
            }
            return this;
        }

        public b i(String... strArr) {
            ImmutableList.a builder = ImmutableList.builder();
            for (String str : (String[]) com.google.android.exoplayer2.util.a.g(strArr)) {
                builder.g(z0.Q0((String) com.google.android.exoplayer2.util.a.g(str)));
            }
            this.f25995c = builder.e();
            return this;
        }

        public b j(int i4) {
            this.f25996d = i4;
            return this;
        }

        public b k(boolean z9) {
            this.f25997e = z9;
            return this;
        }

        @Deprecated
        public b() {
            this.f25993a = ImmutableList.of();
            this.f25994b = 0;
            this.f25995c = ImmutableList.of();
            this.f25996d = 0;
            this.f25997e = false;
            this.f25998f = 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(TrackSelectionParameters trackSelectionParameters) {
            this.f25993a = trackSelectionParameters.preferredAudioLanguages;
            this.f25994b = trackSelectionParameters.preferredAudioRoleFlags;
            this.f25995c = trackSelectionParameters.preferredTextLanguages;
            this.f25996d = trackSelectionParameters.preferredTextRoleFlags;
            this.f25997e = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.f25998f = trackSelectionParameters.disabledTextTrackSelectionFlags;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackSelectionParameters(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, null);
        this.preferredAudioLanguages = ImmutableList.copyOf((Collection) arrayList);
        this.preferredAudioRoleFlags = parcel.readInt();
        ArrayList arrayList2 = new ArrayList();
        parcel.readList(arrayList2, null);
        this.preferredTextLanguages = ImmutableList.copyOf((Collection) arrayList2);
        this.preferredTextRoleFlags = parcel.readInt();
        this.selectUndeterminedTextLanguage = z0.Z0(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
    }
}
