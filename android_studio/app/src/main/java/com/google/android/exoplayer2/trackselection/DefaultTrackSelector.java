package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f2;
import com.google.android.exoplayer2.h2;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.trackselection.a;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.g0;
import com.google.common.collect.s3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes2.dex */
public class DefaultTrackSelector extends i {

    /* renamed from: f  reason: collision with root package name */
    private static final float f25935f = 0.98f;

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f25936g = new int[0];

    /* renamed from: h  reason: collision with root package name */
    private static final s3<Integer> f25937h = s3.k(com.google.android.exoplayer2.trackselection.e.f26033a);

    /* renamed from: i  reason: collision with root package name */
    private static final s3<Integer> f25938i = s3.k(com.google.android.exoplayer2.trackselection.d.f26032a);

    /* renamed from: d  reason: collision with root package name */
    private final g.b f25939d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<Parameters> f25940e;

    /* loaded from: classes2.dex */
    public static final class Parameters extends TrackSelectionParameters {
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        public final boolean allowMultipleAdaptiveSelections;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final boolean forceHighestSupportedBitrate;
        public final boolean forceLowestBitrate;
        public final int maxAudioBitrate;
        public final int maxAudioChannelCount;
        public final int maxVideoBitrate;
        public final int maxVideoFrameRate;
        public final int maxVideoHeight;
        public final int maxVideoWidth;
        public final int minVideoBitrate;
        public final int minVideoFrameRate;
        public final int minVideoHeight;
        public final int minVideoWidth;
        public final ImmutableList<String> preferredAudioMimeTypes;
        public final ImmutableList<String> preferredVideoMimeTypes;
        private final SparseBooleanArray rendererDisabledFlags;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final boolean tunnelingEnabled;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;
        public static final Parameters DEFAULT_WITHOUT_CONTEXT = new d().a();
        public static final Parcelable.Creator<Parameters> CREATOR = new a();

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<Parameters> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Parameters[] newArray(int i4) {
                return new Parameters[i4];
            }
        }

        Parameters(int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z9, boolean z10, boolean z11, int i17, int i18, boolean z12, ImmutableList<String> immutableList, ImmutableList<String> immutableList2, int i19, int i20, int i21, boolean z13, boolean z14, boolean z15, boolean z16, ImmutableList<String> immutableList3, ImmutableList<String> immutableList4, int i22, boolean z17, int i23, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(immutableList2, i19, immutableList4, i22, z17, i23);
            this.maxVideoWidth = i4;
            this.maxVideoHeight = i10;
            this.maxVideoFrameRate = i11;
            this.maxVideoBitrate = i12;
            this.minVideoWidth = i13;
            this.minVideoHeight = i14;
            this.minVideoFrameRate = i15;
            this.minVideoBitrate = i16;
            this.exceedVideoConstraintsIfNecessary = z9;
            this.allowVideoMixedMimeTypeAdaptiveness = z10;
            this.allowVideoNonSeamlessAdaptiveness = z11;
            this.viewportWidth = i17;
            this.viewportHeight = i18;
            this.viewportOrientationMayChange = z12;
            this.preferredVideoMimeTypes = immutableList;
            this.maxAudioChannelCount = i20;
            this.maxAudioBitrate = i21;
            this.exceedAudioConstraintsIfNecessary = z13;
            this.allowAudioMixedMimeTypeAdaptiveness = z14;
            this.allowAudioMixedSampleRateAdaptiveness = z15;
            this.allowAudioMixedChannelCountAdaptiveness = z16;
            this.preferredAudioMimeTypes = immutableList3;
            this.forceLowestBitrate = z18;
            this.forceHighestSupportedBitrate = z19;
            this.exceedRendererCapabilitiesIfNecessary = z20;
            this.tunnelingEnabled = z21;
            this.allowMultipleAdaptiveSelections = z22;
            this.selectionOverrides = sparseArray;
            this.rendererDisabledFlags = sparseBooleanArray;
        }

        private static boolean areRendererDisabledFlagsEqual(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i4 = 0; i4 < size; i4++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i4)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean areSelectionOverridesEqual(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i4 = 0; i4 < size; i4++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i4));
                if (indexOfKey < 0 || !areSelectionOverridesEqual(sparseArray.valueAt(i4), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        public static Parameters getDefaults(Context context) {
            return new d(context).a();
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i4 = 0; i4 < readInt; i4++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i10 = 0; i10 < readInt3; i10++) {
                    hashMap.put((TrackGroupArray) com.google.android.exoplayer2.util.a.g((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader())), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            return sparseArray;
        }

        private static void writeSelectionOverridesToParcel(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = sparseArray.keyAt(i4);
                Map<TrackGroupArray, SelectionOverride> valueAt = sparseArray.valueAt(i4);
                int size2 = valueAt.size();
                parcel.writeInt(keyAt);
                parcel.writeInt(size2);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : valueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return super.equals(obj) && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.maxVideoFrameRate == parameters.maxVideoFrameRate && this.maxVideoBitrate == parameters.maxVideoBitrate && this.minVideoWidth == parameters.minVideoWidth && this.minVideoHeight == parameters.minVideoHeight && this.minVideoFrameRate == parameters.minVideoFrameRate && this.minVideoBitrate == parameters.minVideoBitrate && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.preferredVideoMimeTypes.equals(parameters.preferredVideoMimeTypes) && this.maxAudioChannelCount == parameters.maxAudioChannelCount && this.maxAudioBitrate == parameters.maxAudioBitrate && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == parameters.allowAudioMixedChannelCountAdaptiveness && this.preferredAudioMimeTypes.equals(parameters.preferredAudioMimeTypes) && this.forceLowestBitrate == parameters.forceLowestBitrate && this.forceHighestSupportedBitrate == parameters.forceHighestSupportedBitrate && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingEnabled == parameters.tunnelingEnabled && this.allowMultipleAdaptiveSelections == parameters.allowMultipleAdaptiveSelections && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides);
        }

        public final boolean getRendererDisabled(int i4) {
            return this.rendererDisabledFlags.get(i4);
        }

        @Nullable
        public final SelectionOverride getSelectionOverride(int i4, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i4);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        public final boolean hasSelectionOverride(int i4, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i4);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.tunnelingEnabled ? 1 : 0)) * 31) + (this.allowMultipleAdaptiveSelections ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeInt(this.maxVideoWidth);
            parcel.writeInt(this.maxVideoHeight);
            parcel.writeInt(this.maxVideoFrameRate);
            parcel.writeInt(this.maxVideoBitrate);
            parcel.writeInt(this.minVideoWidth);
            parcel.writeInt(this.minVideoHeight);
            parcel.writeInt(this.minVideoFrameRate);
            parcel.writeInt(this.minVideoBitrate);
            z0.x1(parcel, this.exceedVideoConstraintsIfNecessary);
            z0.x1(parcel, this.allowVideoMixedMimeTypeAdaptiveness);
            z0.x1(parcel, this.allowVideoNonSeamlessAdaptiveness);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            z0.x1(parcel, this.viewportOrientationMayChange);
            parcel.writeList(this.preferredVideoMimeTypes);
            parcel.writeInt(this.maxAudioChannelCount);
            parcel.writeInt(this.maxAudioBitrate);
            z0.x1(parcel, this.exceedAudioConstraintsIfNecessary);
            z0.x1(parcel, this.allowAudioMixedMimeTypeAdaptiveness);
            z0.x1(parcel, this.allowAudioMixedSampleRateAdaptiveness);
            z0.x1(parcel, this.allowAudioMixedChannelCountAdaptiveness);
            parcel.writeList(this.preferredAudioMimeTypes);
            z0.x1(parcel, this.forceLowestBitrate);
            z0.x1(parcel, this.forceHighestSupportedBitrate);
            z0.x1(parcel, this.exceedRendererCapabilitiesIfNecessary);
            z0.x1(parcel, this.tunnelingEnabled);
            z0.x1(parcel, this.allowMultipleAdaptiveSelections);
            writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
            parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public d buildUpon() {
            return new d(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static boolean areSelectionOverridesEqual(java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
            /*
                int r0 = r4.size()
                int r1 = r5.size()
                r2 = 0
                if (r1 == r0) goto Lc
                return r2
            Lc:
                java.util.Set r4 = r4.entrySet()
                java.util.Iterator r4 = r4.iterator()
            L14:
                boolean r0 = r4.hasNext()
                if (r0 == 0) goto L3b
                java.lang.Object r0 = r4.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                java.lang.Object r1 = r0.getKey()
                com.google.android.exoplayer2.source.TrackGroupArray r1 = (com.google.android.exoplayer2.source.TrackGroupArray) r1
                boolean r3 = r5.containsKey(r1)
                if (r3 == 0) goto L3a
                java.lang.Object r0 = r0.getValue()
                java.lang.Object r1 = r5.get(r1)
                boolean r0 = com.google.android.exoplayer2.util.z0.c(r0, r1)
                if (r0 != 0) goto L14
            L3a:
                return r2
            L3b:
                r4 = 1
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
        }

        Parameters(Parcel parcel) {
            super(parcel);
            this.maxVideoWidth = parcel.readInt();
            this.maxVideoHeight = parcel.readInt();
            this.maxVideoFrameRate = parcel.readInt();
            this.maxVideoBitrate = parcel.readInt();
            this.minVideoWidth = parcel.readInt();
            this.minVideoHeight = parcel.readInt();
            this.minVideoFrameRate = parcel.readInt();
            this.minVideoBitrate = parcel.readInt();
            this.exceedVideoConstraintsIfNecessary = z0.Z0(parcel);
            this.allowVideoMixedMimeTypeAdaptiveness = z0.Z0(parcel);
            this.allowVideoNonSeamlessAdaptiveness = z0.Z0(parcel);
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = z0.Z0(parcel);
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, null);
            this.preferredVideoMimeTypes = ImmutableList.copyOf((Collection) arrayList);
            this.maxAudioChannelCount = parcel.readInt();
            this.maxAudioBitrate = parcel.readInt();
            this.exceedAudioConstraintsIfNecessary = z0.Z0(parcel);
            this.allowAudioMixedMimeTypeAdaptiveness = z0.Z0(parcel);
            this.allowAudioMixedSampleRateAdaptiveness = z0.Z0(parcel);
            this.allowAudioMixedChannelCountAdaptiveness = z0.Z0(parcel);
            ArrayList arrayList2 = new ArrayList();
            parcel.readList(arrayList2, null);
            this.preferredAudioMimeTypes = ImmutableList.copyOf((Collection) arrayList2);
            this.forceLowestBitrate = z0.Z0(parcel);
            this.forceHighestSupportedBitrate = z0.Z0(parcel);
            this.exceedRendererCapabilitiesIfNecessary = z0.Z0(parcel);
            this.tunnelingEnabled = z0.Z0(parcel);
            this.allowMultipleAdaptiveSelections = z0.Z0(parcel);
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = (SparseBooleanArray) z0.k(parcel.readSparseBooleanArray());
        }
    }

    /* loaded from: classes2.dex */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new a();
        public final int groupIndex;
        public final int length;
        public final int[] tracks;
        public final int type;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<SelectionOverride> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SelectionOverride[] newArray(int i4) {
                return new SelectionOverride[i4];
            }
        }

        public SelectionOverride(int i4, int... iArr) {
            this(i4, iArr, 0);
        }

        public boolean containsTrack(int i4) {
            for (int i10 : this.tracks) {
                if (i10 == i4) {
                    return true;
                }
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
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks) && this.type == selectionOverride.type;
        }

        public int hashCode() {
            return (((this.groupIndex * 31) + Arrays.hashCode(this.tracks)) * 31) + this.type;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeInt(this.groupIndex);
            parcel.writeInt(this.tracks.length);
            parcel.writeIntArray(this.tracks);
            parcel.writeInt(this.type);
        }

        public SelectionOverride(int i4, int[] iArr, int i10) {
            this.groupIndex = i4;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.tracks = copyOf;
            this.length = iArr.length;
            this.type = i10;
            Arrays.sort(copyOf);
        }

        SelectionOverride(Parcel parcel) {
            this.groupIndex = parcel.readInt();
            int readByte = parcel.readByte();
            this.length = readByte;
            int[] iArr = new int[readByte];
            this.tracks = iArr;
            parcel.readIntArray(iArr);
            this.type = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f25941a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f25942b;

        /* renamed from: c  reason: collision with root package name */
        private final Parameters f25943c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f25944d;

        /* renamed from: e  reason: collision with root package name */
        private final int f25945e;

        /* renamed from: f  reason: collision with root package name */
        private final int f25946f;

        /* renamed from: g  reason: collision with root package name */
        private final int f25947g;

        /* renamed from: h  reason: collision with root package name */
        private final int f25948h;

        /* renamed from: i  reason: collision with root package name */
        private final int f25949i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f25950j;

        /* renamed from: k  reason: collision with root package name */
        private final int f25951k;

        /* renamed from: l  reason: collision with root package name */
        private final int f25952l;

        /* renamed from: m  reason: collision with root package name */
        private final int f25953m;

        /* renamed from: n  reason: collision with root package name */
        private final int f25954n;

        public b(Format format, Parameters parameters, int i4) {
            int i10;
            int i11;
            int i12;
            this.f25943c = parameters;
            this.f25942b = DefaultTrackSelector.D(format.language);
            int i13 = 0;
            this.f25944d = DefaultTrackSelector.x(i4, false);
            int i14 = 0;
            while (true) {
                i10 = Integer.MAX_VALUE;
                if (i14 >= parameters.preferredAudioLanguages.size()) {
                    i14 = Integer.MAX_VALUE;
                    i11 = 0;
                    break;
                }
                i11 = DefaultTrackSelector.t(format, parameters.preferredAudioLanguages.get(i14), false);
                if (i11 > 0) {
                    break;
                }
                i14++;
            }
            this.f25946f = i14;
            this.f25945e = i11;
            this.f25947g = Integer.bitCount(format.roleFlags & parameters.preferredAudioRoleFlags);
            boolean z9 = true;
            this.f25950j = (format.selectionFlags & 1) != 0;
            int i15 = format.channelCount;
            this.f25951k = i15;
            this.f25952l = format.sampleRate;
            int i16 = format.bitrate;
            this.f25953m = i16;
            if ((i16 != -1 && i16 > parameters.maxAudioBitrate) || (i15 != -1 && i15 > parameters.maxAudioChannelCount)) {
                z9 = false;
            }
            this.f25941a = z9;
            String[] o02 = z0.o0();
            int i17 = 0;
            while (true) {
                if (i17 >= o02.length) {
                    i17 = Integer.MAX_VALUE;
                    i12 = 0;
                    break;
                }
                i12 = DefaultTrackSelector.t(format, o02[i17], false);
                if (i12 > 0) {
                    break;
                }
                i17++;
            }
            this.f25948h = i17;
            this.f25949i = i12;
            while (true) {
                if (i13 < parameters.preferredAudioMimeTypes.size()) {
                    String str = format.sampleMimeType;
                    if (str != null && str.equals(parameters.preferredAudioMimeTypes.get(i13))) {
                        i10 = i13;
                        break;
                    }
                    i13++;
                } else {
                    break;
                }
            }
            this.f25954n = i10;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            s3 G;
            if (this.f25941a && this.f25944d) {
                G = DefaultTrackSelector.f25937h;
            } else {
                G = DefaultTrackSelector.f25937h.G();
            }
            g0 j4 = g0.n().k(this.f25944d, bVar.f25944d).j(Integer.valueOf(this.f25946f), Integer.valueOf(bVar.f25946f), s3.B().G()).f(this.f25945e, bVar.f25945e).f(this.f25947g, bVar.f25947g).k(this.f25941a, bVar.f25941a).j(Integer.valueOf(this.f25954n), Integer.valueOf(bVar.f25954n), s3.B().G()).j(Integer.valueOf(this.f25953m), Integer.valueOf(bVar.f25953m), this.f25943c.forceLowestBitrate ? DefaultTrackSelector.f25937h.G() : DefaultTrackSelector.f25938i).k(this.f25950j, bVar.f25950j).j(Integer.valueOf(this.f25948h), Integer.valueOf(bVar.f25948h), s3.B().G()).f(this.f25949i, bVar.f25949i).j(Integer.valueOf(this.f25951k), Integer.valueOf(bVar.f25951k), G).j(Integer.valueOf(this.f25952l), Integer.valueOf(bVar.f25952l), G);
            Integer valueOf = Integer.valueOf(this.f25953m);
            Integer valueOf2 = Integer.valueOf(bVar.f25953m);
            if (!z0.c(this.f25942b, bVar.f25942b)) {
                G = DefaultTrackSelector.f25938i;
            }
            return j4.j(valueOf, valueOf2, G).m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f25955a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f25956b;

        public c(Format format, int i4) {
            this.f25955a = (format.selectionFlags & 1) != 0;
            this.f25956b = DefaultTrackSelector.x(i4, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return g0.n().k(this.f25956b, cVar.f25956b).k(this.f25955a, cVar.f25955a).m();
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends TrackSelectionParameters.b {
        private boolean A;
        private ImmutableList<String> B;
        private boolean C;
        private boolean D;
        private boolean E;
        private boolean F;
        private boolean G;
        private final SparseArray<Map<TrackGroupArray, SelectionOverride>> H;
        private final SparseBooleanArray I;

        /* renamed from: g  reason: collision with root package name */
        private int f25957g;

        /* renamed from: h  reason: collision with root package name */
        private int f25958h;

        /* renamed from: i  reason: collision with root package name */
        private int f25959i;

        /* renamed from: j  reason: collision with root package name */
        private int f25960j;

        /* renamed from: k  reason: collision with root package name */
        private int f25961k;

        /* renamed from: l  reason: collision with root package name */
        private int f25962l;

        /* renamed from: m  reason: collision with root package name */
        private int f25963m;

        /* renamed from: n  reason: collision with root package name */
        private int f25964n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f25965o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f25966p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f25967q;

        /* renamed from: r  reason: collision with root package name */
        private int f25968r;

        /* renamed from: s  reason: collision with root package name */
        private int f25969s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f25970t;

        /* renamed from: u  reason: collision with root package name */
        private ImmutableList<String> f25971u;

        /* renamed from: v  reason: collision with root package name */
        private int f25972v;

        /* renamed from: w  reason: collision with root package name */
        private int f25973w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f25974x;

        /* renamed from: y  reason: collision with root package name */
        private boolean f25975y;

        /* renamed from: z  reason: collision with root package name */
        private boolean f25976z;

        @EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioMimeTypes"})
        private void E() {
            this.f25957g = Integer.MAX_VALUE;
            this.f25958h = Integer.MAX_VALUE;
            this.f25959i = Integer.MAX_VALUE;
            this.f25960j = Integer.MAX_VALUE;
            this.f25965o = true;
            this.f25966p = false;
            this.f25967q = true;
            this.f25968r = Integer.MAX_VALUE;
            this.f25969s = Integer.MAX_VALUE;
            this.f25970t = true;
            this.f25971u = ImmutableList.of();
            this.f25972v = Integer.MAX_VALUE;
            this.f25973w = Integer.MAX_VALUE;
            this.f25974x = true;
            this.f25975y = false;
            this.f25976z = false;
            this.A = false;
            this.B = ImmutableList.of();
            this.C = false;
            this.D = false;
            this.E = true;
            this.F = false;
            this.G = true;
        }

        private static SparseArray<Map<TrackGroupArray, SelectionOverride>> r(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                sparseArray2.put(sparseArray.keyAt(i4), new HashMap(sparseArray.valueAt(i4)));
            }
            return sparseArray2;
        }

        public d A(boolean z9) {
            this.E = z9;
            return this;
        }

        public d B(boolean z9) {
            this.f25965o = z9;
            return this;
        }

        public d C(boolean z9) {
            this.D = z9;
            return this;
        }

        public d D(boolean z9) {
            this.C = z9;
            return this;
        }

        public d F(int i4) {
            this.f25973w = i4;
            return this;
        }

        public d G(int i4) {
            this.f25972v = i4;
            return this;
        }

        public d H(int i4) {
            this.f25960j = i4;
            return this;
        }

        public d I(int i4) {
            this.f25959i = i4;
            return this;
        }

        public d J(int i4, int i10) {
            this.f25957g = i4;
            this.f25958h = i10;
            return this;
        }

        public d K() {
            return J(1279, 719);
        }

        public d L(int i4) {
            this.f25964n = i4;
            return this;
        }

        public d M(int i4) {
            this.f25963m = i4;
            return this;
        }

        public d N(int i4, int i10) {
            this.f25961k = i4;
            this.f25962l = i10;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: O */
        public d c(@Nullable String str) {
            super.c(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: P */
        public d d(String... strArr) {
            super.d(strArr);
            return this;
        }

        public d Q(@Nullable String str) {
            return str == null ? R(new String[0]) : R(str);
        }

        public d R(String... strArr) {
            this.B = ImmutableList.copyOf(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: S */
        public d e(int i4) {
            super.e(i4);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: T */
        public d f(@Nullable String str) {
            super.f(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: U */
        public d g(Context context) {
            super.g(context);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: V */
        public d i(String... strArr) {
            super.i(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: W */
        public d j(int i4) {
            super.j(i4);
            return this;
        }

        public d X(@Nullable String str) {
            return str == null ? Y(new String[0]) : Y(str);
        }

        public d Y(String... strArr) {
            this.f25971u = ImmutableList.copyOf(strArr);
            return this;
        }

        public final d Z(int i4, boolean z9) {
            if (this.I.get(i4) == z9) {
                return this;
            }
            if (z9) {
                this.I.put(i4, true);
            } else {
                this.I.delete(i4);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: a0 */
        public d k(boolean z9) {
            super.k(z9);
            return this;
        }

        public final d b0(int i4, TrackGroupArray trackGroupArray, @Nullable SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.H.get(i4);
            if (map == null) {
                map = new HashMap<>();
                this.H.put(i4, map);
            }
            if (map.containsKey(trackGroupArray) && z0.c(map.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map.put(trackGroupArray, selectionOverride);
            return this;
        }

        public d c0(boolean z9) {
            this.F = z9;
            return this;
        }

        public d d0(int i4, int i10, boolean z9) {
            this.f25968r = i4;
            this.f25969s = i10;
            this.f25970t = z9;
            return this;
        }

        public d e0(Context context, boolean z9) {
            Point V = z0.V(context);
            return d0(V.x, V.y, z9);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: l */
        public Parameters a() {
            return new Parameters(this.f25957g, this.f25958h, this.f25959i, this.f25960j, this.f25961k, this.f25962l, this.f25963m, this.f25964n, this.f25965o, this.f25966p, this.f25967q, this.f25968r, this.f25969s, this.f25970t, this.f25971u, this.f25993a, this.f25994b, this.f25972v, this.f25973w, this.f25974x, this.f25975y, this.f25976z, this.A, this.B, this.f25995c, this.f25996d, this.f25997e, this.f25998f, this.C, this.D, this.E, this.F, this.G, this.H, this.I);
        }

        public final d m(int i4, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.H.get(i4);
            if (map != null && map.containsKey(trackGroupArray)) {
                map.remove(trackGroupArray);
                if (map.isEmpty()) {
                    this.H.remove(i4);
                }
            }
            return this;
        }

        public final d n() {
            if (this.H.size() == 0) {
                return this;
            }
            this.H.clear();
            return this;
        }

        public final d o(int i4) {
            Map<TrackGroupArray, SelectionOverride> map = this.H.get(i4);
            if (map != null && !map.isEmpty()) {
                this.H.remove(i4);
            }
            return this;
        }

        public d p() {
            return J(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public d q() {
            return d0(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public d s(boolean z9) {
            this.A = z9;
            return this;
        }

        public d t(boolean z9) {
            this.f25975y = z9;
            return this;
        }

        public d u(boolean z9) {
            this.f25976z = z9;
            return this;
        }

        public d v(boolean z9) {
            this.G = z9;
            return this;
        }

        public d w(boolean z9) {
            this.f25966p = z9;
            return this;
        }

        public d x(boolean z9) {
            this.f25967q = z9;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.b
        /* renamed from: y */
        public d b(int i4) {
            super.b(i4);
            return this;
        }

        public d z(boolean z9) {
            this.f25974x = z9;
            return this;
        }

        @Deprecated
        public d() {
            E();
            this.H = new SparseArray<>();
            this.I = new SparseBooleanArray();
        }

        public d(Context context) {
            super(context);
            E();
            this.H = new SparseArray<>();
            this.I = new SparseBooleanArray();
            e0(context, true);
        }

        private d(Parameters parameters) {
            super(parameters);
            this.f25957g = parameters.maxVideoWidth;
            this.f25958h = parameters.maxVideoHeight;
            this.f25959i = parameters.maxVideoFrameRate;
            this.f25960j = parameters.maxVideoBitrate;
            this.f25961k = parameters.minVideoWidth;
            this.f25962l = parameters.minVideoHeight;
            this.f25963m = parameters.minVideoFrameRate;
            this.f25964n = parameters.minVideoBitrate;
            this.f25965o = parameters.exceedVideoConstraintsIfNecessary;
            this.f25966p = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.f25967q = parameters.allowVideoNonSeamlessAdaptiveness;
            this.f25968r = parameters.viewportWidth;
            this.f25969s = parameters.viewportHeight;
            this.f25970t = parameters.viewportOrientationMayChange;
            this.f25971u = parameters.preferredVideoMimeTypes;
            this.f25972v = parameters.maxAudioChannelCount;
            this.f25973w = parameters.maxAudioBitrate;
            this.f25974x = parameters.exceedAudioConstraintsIfNecessary;
            this.f25975y = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.f25976z = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.A = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.B = parameters.preferredAudioMimeTypes;
            this.C = parameters.forceLowestBitrate;
            this.D = parameters.forceHighestSupportedBitrate;
            this.E = parameters.exceedRendererCapabilitiesIfNecessary;
            this.F = parameters.tunnelingEnabled;
            this.G = parameters.allowMultipleAdaptiveSelections;
            this.H = r(parameters.selectionOverrides);
            this.I = parameters.rendererDisabledFlags.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class e implements Comparable<e> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f25977a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f25978b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f25979c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f25980d;

        /* renamed from: e  reason: collision with root package name */
        private final int f25981e;

        /* renamed from: f  reason: collision with root package name */
        private final int f25982f;

        /* renamed from: g  reason: collision with root package name */
        private final int f25983g;

        /* renamed from: h  reason: collision with root package name */
        private final int f25984h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f25985i;

        public e(Format format, Parameters parameters, int i4, @Nullable String str) {
            ImmutableList<String> immutableList;
            int i10;
            boolean z9 = false;
            this.f25978b = DefaultTrackSelector.x(i4, false);
            int i11 = format.selectionFlags & (~parameters.disabledTextTrackSelectionFlags);
            this.f25979c = (i11 & 1) != 0;
            this.f25980d = (i11 & 2) != 0;
            int i12 = Integer.MAX_VALUE;
            if (parameters.preferredTextLanguages.isEmpty()) {
                immutableList = ImmutableList.of("");
            } else {
                immutableList = parameters.preferredTextLanguages;
            }
            int i13 = 0;
            while (true) {
                if (i13 >= immutableList.size()) {
                    i10 = 0;
                    break;
                }
                i10 = DefaultTrackSelector.t(format, immutableList.get(i13), parameters.selectUndeterminedTextLanguage);
                if (i10 > 0) {
                    i12 = i13;
                    break;
                }
                i13++;
            }
            this.f25981e = i12;
            this.f25982f = i10;
            int bitCount = Integer.bitCount(format.roleFlags & parameters.preferredTextRoleFlags);
            this.f25983g = bitCount;
            this.f25985i = (format.roleFlags & 1088) != 0;
            int t9 = DefaultTrackSelector.t(format, str, DefaultTrackSelector.D(str) == null);
            this.f25984h = t9;
            if (i10 > 0 || ((parameters.preferredTextLanguages.isEmpty() && bitCount > 0) || this.f25979c || (this.f25980d && t9 > 0))) {
                z9 = true;
            }
            this.f25977a = z9;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(e eVar) {
            g0 f10 = g0.n().k(this.f25978b, eVar.f25978b).j(Integer.valueOf(this.f25981e), Integer.valueOf(eVar.f25981e), s3.B().G()).f(this.f25982f, eVar.f25982f).f(this.f25983g, eVar.f25983g).k(this.f25979c, eVar.f25979c).j(Boolean.valueOf(this.f25980d), Boolean.valueOf(eVar.f25980d), this.f25982f == 0 ? s3.B() : s3.B().G()).f(this.f25984h, eVar.f25984h);
            if (this.f25983g == 0) {
                f10 = f10.l(this.f25985i, eVar.f25985i);
            }
            return f10.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class f implements Comparable<f> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f25986a;

        /* renamed from: b  reason: collision with root package name */
        private final Parameters f25987b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f25988c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f25989d;

        /* renamed from: e  reason: collision with root package name */
        private final int f25990e;

        /* renamed from: f  reason: collision with root package name */
        private final int f25991f;

        /* renamed from: g  reason: collision with root package name */
        private final int f25992g;

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
            if (r10 < r8.minVideoFrameRate) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x005b, code lost:
            if (r10 < r8.minVideoBitrate) goto L54;
         */
        /* JADX WARN: Removed duplicated region for block: B:34:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0091 A[EDGE_INSN: B:53:0x0091->B:51:0x0091 ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public f(com.google.android.exoplayer2.Format r7, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r8, int r9, boolean r10) {
            /*
                r6 = this;
                r6.<init>()
                r6.f25987b = r8
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                r1 = 1
                r2 = 0
                r3 = -1
                if (r10 == 0) goto L33
                int r4 = r7.width
                if (r4 == r3) goto L14
                int r5 = r8.maxVideoWidth
                if (r4 > r5) goto L33
            L14:
                int r4 = r7.height
                if (r4 == r3) goto L1c
                int r5 = r8.maxVideoHeight
                if (r4 > r5) goto L33
            L1c:
                float r4 = r7.frameRate
                int r5 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r5 == 0) goto L29
                int r5 = r8.maxVideoFrameRate
                float r5 = (float) r5
                int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r4 > 0) goto L33
            L29:
                int r4 = r7.bitrate
                if (r4 == r3) goto L31
                int r5 = r8.maxVideoBitrate
                if (r4 > r5) goto L33
            L31:
                r4 = 1
                goto L34
            L33:
                r4 = 0
            L34:
                r6.f25986a = r4
                if (r10 == 0) goto L5e
                int r10 = r7.width
                if (r10 == r3) goto L40
                int r4 = r8.minVideoWidth
                if (r10 < r4) goto L5e
            L40:
                int r10 = r7.height
                if (r10 == r3) goto L48
                int r4 = r8.minVideoHeight
                if (r10 < r4) goto L5e
            L48:
                float r10 = r7.frameRate
                int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r0 == 0) goto L55
                int r0 = r8.minVideoFrameRate
                float r0 = (float) r0
                int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r10 < 0) goto L5e
            L55:
                int r10 = r7.bitrate
                if (r10 == r3) goto L5f
                int r0 = r8.minVideoBitrate
                if (r10 < r0) goto L5e
                goto L5f
            L5e:
                r1 = 0
            L5f:
                r6.f25988c = r1
                boolean r9 = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.x(r9, r2)
                r6.f25989d = r9
                int r9 = r7.bitrate
                r6.f25990e = r9
                int r9 = r7.getPixelCount()
                r6.f25991f = r9
                r9 = 2147483647(0x7fffffff, float:NaN)
            L74:
                com.google.common.collect.ImmutableList<java.lang.String> r10 = r8.preferredVideoMimeTypes
                int r10 = r10.size()
                if (r2 >= r10) goto L91
                java.lang.String r10 = r7.sampleMimeType
                if (r10 == 0) goto L8e
                com.google.common.collect.ImmutableList<java.lang.String> r0 = r8.preferredVideoMimeTypes
                java.lang.Object r0 = r0.get(r2)
                boolean r10 = r10.equals(r0)
                if (r10 == 0) goto L8e
                r9 = r2
                goto L91
            L8e:
                int r2 = r2 + 1
                goto L74
            L91:
                r6.f25992g = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.f.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, boolean):void");
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(f fVar) {
            s3 G;
            if (this.f25986a && this.f25989d) {
                G = DefaultTrackSelector.f25937h;
            } else {
                G = DefaultTrackSelector.f25937h.G();
            }
            return g0.n().k(this.f25989d, fVar.f25989d).k(this.f25986a, fVar.f25986a).k(this.f25988c, fVar.f25988c).j(Integer.valueOf(this.f25992g), Integer.valueOf(fVar.f25992g), s3.B().G()).j(Integer.valueOf(this.f25990e), Integer.valueOf(fVar.f25990e), this.f25987b.forceLowestBitrate ? DefaultTrackSelector.f25937h.G() : DefaultTrackSelector.f25938i).j(Integer.valueOf(this.f25991f), Integer.valueOf(fVar.f25991f), G).j(Integer.valueOf(this.f25990e), Integer.valueOf(fVar.f25990e), G).m();
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, new a.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int A(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            return num.intValue() - num2.intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int B(Integer num, Integer num2) {
        return 0;
    }

    private static void C(i.a aVar, int[][][] iArr, h2[] h2VarArr, g[] gVarArr) {
        boolean z9;
        boolean z10 = false;
        int i4 = -1;
        int i10 = -1;
        for (int i11 = 0; i11 < aVar.c(); i11++) {
            int f10 = aVar.f(i11);
            g gVar = gVarArr[i11];
            if ((f10 == 1 || f10 == 2) && gVar != null && E(iArr[i11], aVar.g(i11), gVar)) {
                if (f10 == 1) {
                    if (i10 != -1) {
                        z9 = false;
                        break;
                    }
                    i10 = i11;
                } else if (i4 != -1) {
                    z9 = false;
                    break;
                } else {
                    i4 = i11;
                }
            }
        }
        z9 = true;
        if (i10 != -1 && i4 != -1) {
            z10 = true;
        }
        if (z9 && z10) {
            h2 h2Var = new h2(true);
            h2VarArr[i10] = h2Var;
            h2VarArr[i4] = h2Var;
        }
    }

    @Nullable
    protected static String D(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private static boolean E(int[][] iArr, TrackGroupArray trackGroupArray, g gVar) {
        if (gVar == null) {
            return false;
        }
        int indexOf = trackGroupArray.indexOf(gVar.l());
        for (int i4 = 0; i4 < gVar.length(); i4++) {
            if (f2.e(iArr[indexOf][gVar.g(i4)]) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    private static g.a F(TrackGroupArray trackGroupArray, int[][] iArr, int i4, Parameters parameters) {
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        Parameters parameters2 = parameters;
        int i10 = parameters2.allowVideoNonSeamlessAdaptiveness ? 24 : 16;
        boolean z9 = parameters2.allowVideoMixedMimeTypeAdaptiveness && (i4 & i10) != 0;
        int i11 = 0;
        while (i11 < trackGroupArray2.length) {
            TrackGroup trackGroup = trackGroupArray2.get(i11);
            int i12 = i11;
            int[] s9 = s(trackGroup, iArr[i11], z9, i10, parameters2.maxVideoWidth, parameters2.maxVideoHeight, parameters2.maxVideoFrameRate, parameters2.maxVideoBitrate, parameters2.minVideoWidth, parameters2.minVideoHeight, parameters2.minVideoFrameRate, parameters2.minVideoBitrate, parameters2.viewportWidth, parameters2.viewportHeight, parameters2.viewportOrientationMayChange);
            if (s9.length > 0) {
                return new g.a(trackGroup, s9);
            }
            i11 = i12 + 1;
            trackGroupArray2 = trackGroupArray;
            parameters2 = parameters;
        }
        return null;
    }

    @Nullable
    private static g.a I(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i4 = -1;
        TrackGroup trackGroup = null;
        f fVar = null;
        for (int i10 = 0; i10 < trackGroupArray.length; i10++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i10);
            List<Integer> w9 = w(trackGroup2, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            int[] iArr2 = iArr[i10];
            for (int i11 = 0; i11 < trackGroup2.length; i11++) {
                Format format = trackGroup2.getFormat(i11);
                if ((format.roleFlags & 16384) == 0 && x(iArr2[i11], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    f fVar2 = new f(format, parameters, iArr2[i11], w9.contains(Integer.valueOf(i11)));
                    if ((fVar2.f25986a || parameters.exceedVideoConstraintsIfNecessary) && (fVar == null || fVar2.compareTo(fVar) > 0)) {
                        trackGroup = trackGroup2;
                        i4 = i11;
                        fVar = fVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new g.a(trackGroup, i4);
    }

    private static void p(TrackGroup trackGroup, int[] iArr, int i4, @Nullable String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!z(trackGroup.getFormat(intValue), str, iArr[intValue], i4, i10, i11, i12, i13, i14, i15, i16, i17)) {
                list.remove(size);
            }
        }
    }

    private static int[] q(TrackGroup trackGroup, int[] iArr, int i4, int i10, boolean z9, boolean z10, boolean z11) {
        Format format = trackGroup.getFormat(i4);
        int[] iArr2 = new int[trackGroup.length];
        int i11 = 0;
        for (int i12 = 0; i12 < trackGroup.length; i12++) {
            if (i12 == i4 || y(trackGroup.getFormat(i12), iArr[i12], format, i10, z9, z10, z11)) {
                iArr2[i11] = i12;
                i11++;
            }
        }
        return Arrays.copyOf(iArr2, i11);
    }

    private static int r(TrackGroup trackGroup, int[] iArr, int i4, @Nullable String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, List<Integer> list) {
        int i18 = 0;
        for (int i19 = 0; i19 < list.size(); i19++) {
            int intValue = list.get(i19).intValue();
            if (z(trackGroup.getFormat(intValue), str, iArr[intValue], i4, i10, i11, i12, i13, i14, i15, i16, i17)) {
                i18++;
            }
        }
        return i18;
    }

    private static int[] s(TrackGroup trackGroup, int[] iArr, boolean z9, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, boolean z10) {
        String str;
        int i20;
        int i21;
        HashSet hashSet;
        if (trackGroup.length < 2) {
            return f25936g;
        }
        List<Integer> w9 = w(trackGroup, i18, i19, z10);
        if (w9.size() < 2) {
            return f25936g;
        }
        if (z9) {
            str = null;
        } else {
            HashSet hashSet2 = new HashSet();
            String str2 = null;
            int i22 = 0;
            int i23 = 0;
            while (i23 < w9.size()) {
                String str3 = trackGroup.getFormat(w9.get(i23).intValue()).sampleMimeType;
                if (hashSet2.add(str3)) {
                    i20 = i22;
                    i21 = i23;
                    hashSet = hashSet2;
                    int r9 = r(trackGroup, iArr, i4, str3, i10, i11, i12, i13, i14, i15, i16, i17, w9);
                    if (r9 > i20) {
                        i22 = r9;
                        str2 = str3;
                        i23 = i21 + 1;
                        hashSet2 = hashSet;
                    }
                } else {
                    i20 = i22;
                    i21 = i23;
                    hashSet = hashSet2;
                }
                i22 = i20;
                i23 = i21 + 1;
                hashSet2 = hashSet;
            }
            str = str2;
        }
        p(trackGroup, iArr, i4, str, i10, i11, i12, i13, i14, i15, i16, i17, w9);
        return w9.size() < 2 ? f25936g : com.google.common.primitives.f.B(w9);
    }

    protected static int t(Format format, @Nullable String str, boolean z9) {
        if (TextUtils.isEmpty(str) || !str.equals(format.language)) {
            String D = D(str);
            String D2 = D(format.language);
            if (D2 == null || D == null) {
                return (z9 && D2 == null) ? 1 : 0;
            } else if (D2.startsWith(D) || D.startsWith(D2)) {
                return 3;
            } else {
                return z0.m1(D2, "-")[0].equals(z0.m1(D, "-")[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000d, code lost:
        if ((r6 > r7) != (r4 > r5)) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Point u(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = 1
            goto L9
        L8:
            r1 = 0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = 0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.google.android.exoplayer2.util.z0.m(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.google.android.exoplayer2.util.z0.m(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.u(boolean, int, int, int, int):android.graphics.Point");
    }

    private static List<Integer> w(TrackGroup trackGroup, int i4, int i10, boolean z9) {
        int i11;
        ArrayList arrayList = new ArrayList(trackGroup.length);
        for (int i12 = 0; i12 < trackGroup.length; i12++) {
            arrayList.add(Integer.valueOf(i12));
        }
        if (i4 != Integer.MAX_VALUE && i10 != Integer.MAX_VALUE) {
            int i13 = Integer.MAX_VALUE;
            for (int i14 = 0; i14 < trackGroup.length; i14++) {
                Format format = trackGroup.getFormat(i14);
                int i15 = format.width;
                if (i15 > 0 && (i11 = format.height) > 0) {
                    Point u9 = u(z9, i4, i10, i15, i11);
                    int i16 = format.width;
                    int i17 = format.height;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (u9.x * f25935f)) && i17 >= ((int) (u9.y * f25935f)) && i18 < i13) {
                        i13 = i18;
                    }
                }
            }
            if (i13 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i13) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    protected static boolean x(int i4, boolean z9) {
        int d4 = f2.d(i4);
        return d4 == 4 || (z9 && d4 == 3);
    }

    private static boolean y(Format format, int i4, Format format2, int i10, boolean z9, boolean z10, boolean z11) {
        int i11;
        int i12;
        String str;
        int i13;
        if (!x(i4, false) || (i11 = format.bitrate) == -1 || i11 > i10) {
            return false;
        }
        if (z11 || ((i13 = format.channelCount) != -1 && i13 == format2.channelCount)) {
            if (z9 || ((str = format.sampleMimeType) != null && TextUtils.equals(str, format2.sampleMimeType))) {
                return z10 || ((i12 = format.sampleRate) != -1 && i12 == format2.sampleRate);
            }
            return false;
        }
        return false;
    }

    private static boolean z(Format format, @Nullable String str, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        int i19;
        if ((format.roleFlags & 16384) == 0 && x(i4, false) && (i4 & i10) != 0) {
            if (str == null || z0.c(format.sampleMimeType, str)) {
                int i20 = format.width;
                if (i20 == -1 || (i15 <= i20 && i20 <= i11)) {
                    int i21 = format.height;
                    if (i21 == -1 || (i16 <= i21 && i21 <= i12)) {
                        float f10 = format.frameRate;
                        return (f10 == -1.0f || (((float) i17) <= f10 && f10 <= ((float) i13))) && (i19 = format.bitrate) != -1 && i18 <= i19 && i19 <= i14;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    protected g.a[] G(i.a aVar, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        int i4;
        String str;
        int i10;
        b bVar;
        String str2;
        int i11;
        int c10 = aVar.c();
        g.a[] aVarArr = new g.a[c10];
        int i12 = 0;
        boolean z9 = false;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i13 >= c10) {
                break;
            }
            if (2 == aVar.f(i13)) {
                if (!z9) {
                    aVarArr[i13] = L(aVar.g(i13), iArr[i13], iArr2[i13], parameters, true);
                    z9 = aVarArr[i13] != null;
                }
                i14 |= aVar.g(i13).length <= 0 ? 0 : 1;
            }
            i13++;
        }
        b bVar2 = null;
        String str3 = null;
        int i15 = -1;
        int i16 = 0;
        while (i16 < c10) {
            if (i4 == aVar.f(i16)) {
                i10 = i15;
                bVar = bVar2;
                str2 = str3;
                i11 = i16;
                Pair<g.a, b> H = H(aVar.g(i16), iArr[i16], iArr2[i16], parameters, parameters.allowMultipleAdaptiveSelections || i14 == 0);
                if (H != null && (bVar == null || ((b) H.second).compareTo(bVar) > 0)) {
                    if (i10 != -1) {
                        aVarArr[i10] = null;
                    }
                    g.a aVar2 = (g.a) H.first;
                    aVarArr[i11] = aVar2;
                    str3 = aVar2.f26034a.getFormat(aVar2.f26035b[0]).language;
                    bVar2 = (b) H.second;
                    i15 = i11;
                    i16 = i11 + 1;
                    i4 = 1;
                }
            } else {
                i10 = i15;
                bVar = bVar2;
                str2 = str3;
                i11 = i16;
            }
            i15 = i10;
            bVar2 = bVar;
            str3 = str2;
            i16 = i11 + 1;
            i4 = 1;
        }
        String str4 = str3;
        e eVar = null;
        int i17 = -1;
        while (i12 < c10) {
            int f10 = aVar.f(i12);
            if (f10 != 1) {
                if (f10 != 2) {
                    if (f10 != 3) {
                        aVarArr[i12] = J(f10, aVar.g(i12), iArr[i12], parameters);
                    } else {
                        str = str4;
                        Pair<g.a, e> K = K(aVar.g(i12), iArr[i12], parameters, str);
                        if (K != null && (eVar == null || ((e) K.second).compareTo(eVar) > 0)) {
                            if (i17 != -1) {
                                aVarArr[i17] = null;
                            }
                            aVarArr[i12] = (g.a) K.first;
                            eVar = (e) K.second;
                            i17 = i12;
                        }
                    }
                }
                str = str4;
            } else {
                str = str4;
            }
            i12++;
            str4 = str;
        }
        return aVarArr;
    }

    @Nullable
    protected Pair<g.a, b> H(TrackGroupArray trackGroupArray, int[][] iArr, int i4, Parameters parameters, boolean z9) throws ExoPlaybackException {
        g.a aVar = null;
        b bVar = null;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < trackGroupArray.length; i12++) {
            TrackGroup trackGroup = trackGroupArray.get(i12);
            int[] iArr2 = iArr[i12];
            for (int i13 = 0; i13 < trackGroup.length; i13++) {
                if (x(iArr2[i13], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    b bVar2 = new b(trackGroup.getFormat(i13), parameters, iArr2[i13]);
                    if ((bVar2.f25941a || parameters.exceedAudioConstraintsIfNecessary) && (bVar == null || bVar2.compareTo(bVar) > 0)) {
                        i10 = i12;
                        i11 = i13;
                        bVar = bVar2;
                    }
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        TrackGroup trackGroup2 = trackGroupArray.get(i10);
        if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && z9) {
            int[] q9 = q(trackGroup2, iArr[i10], i11, parameters.maxAudioBitrate, parameters.allowAudioMixedMimeTypeAdaptiveness, parameters.allowAudioMixedSampleRateAdaptiveness, parameters.allowAudioMixedChannelCountAdaptiveness);
            if (q9.length > 1) {
                aVar = new g.a(trackGroup2, q9);
            }
        }
        if (aVar == null) {
            aVar = new g.a(trackGroup2, i11);
        }
        return Pair.create(aVar, (b) com.google.android.exoplayer2.util.a.g(bVar));
    }

    @Nullable
    protected g.a J(int i4, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        c cVar = null;
        int i10 = 0;
        for (int i11 = 0; i11 < trackGroupArray.length; i11++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i11);
            int[] iArr2 = iArr[i11];
            for (int i12 = 0; i12 < trackGroup2.length; i12++) {
                if (x(iArr2[i12], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    c cVar2 = new c(trackGroup2.getFormat(i12), iArr2[i12]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        trackGroup = trackGroup2;
                        i10 = i12;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new g.a(trackGroup, i10);
    }

    @Nullable
    protected Pair<g.a, e> K(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, @Nullable String str) throws ExoPlaybackException {
        int i4 = -1;
        TrackGroup trackGroup = null;
        e eVar = null;
        for (int i10 = 0; i10 < trackGroupArray.length; i10++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i10);
            int[] iArr2 = iArr[i10];
            for (int i11 = 0; i11 < trackGroup2.length; i11++) {
                if (x(iArr2[i11], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    e eVar2 = new e(trackGroup2.getFormat(i11), parameters, iArr2[i11], str);
                    if (eVar2.f25977a && (eVar == null || eVar2.compareTo(eVar) > 0)) {
                        trackGroup = trackGroup2;
                        i4 = i11;
                        eVar = eVar2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new g.a(trackGroup, i4), (e) com.google.android.exoplayer2.util.a.g(eVar));
    }

    @Nullable
    protected g.a L(TrackGroupArray trackGroupArray, int[][] iArr, int i4, Parameters parameters, boolean z9) throws ExoPlaybackException {
        g.a F = (parameters.forceHighestSupportedBitrate || parameters.forceLowestBitrate || !z9) ? null : F(trackGroupArray, iArr, i4, parameters);
        return F == null ? I(trackGroupArray, iArr, parameters) : F;
    }

    public void M(Parameters parameters) {
        com.google.android.exoplayer2.util.a.g(parameters);
        if (this.f25940e.getAndSet(parameters).equals(parameters)) {
            return;
        }
        c();
    }

    public void N(d dVar) {
        M(dVar.a());
    }

    @Override // com.google.android.exoplayer2.trackselection.i
    protected final Pair<h2[], g[]> j(i.a aVar, int[][][] iArr, int[] iArr2, z.a aVar2, s2 s2Var) throws ExoPlaybackException {
        Parameters parameters = this.f25940e.get();
        int c10 = aVar.c();
        g.a[] G = G(aVar, iArr, iArr2, parameters);
        int i4 = 0;
        while (true) {
            if (i4 >= c10) {
                break;
            }
            if (parameters.getRendererDisabled(i4)) {
                G[i4] = null;
            } else {
                TrackGroupArray g4 = aVar.g(i4);
                if (parameters.hasSelectionOverride(i4, g4)) {
                    SelectionOverride selectionOverride = parameters.getSelectionOverride(i4, g4);
                    G[i4] = selectionOverride != null ? new g.a(g4.get(selectionOverride.groupIndex), selectionOverride.tracks, selectionOverride.type) : null;
                }
            }
            i4++;
        }
        g[] a10 = this.f25939d.a(G, a(), aVar2, s2Var);
        h2[] h2VarArr = new h2[c10];
        for (int i10 = 0; i10 < c10; i10++) {
            h2VarArr[i10] = !parameters.getRendererDisabled(i10) && (aVar.f(i10) == 7 || a10[i10] != null) ? h2.f23643b : null;
        }
        if (parameters.tunnelingEnabled) {
            C(aVar, iArr, h2VarArr, a10);
        }
        return Pair.create(h2VarArr, a10);
    }

    public d o() {
        return v().buildUpon();
    }

    public Parameters v() {
        return this.f25940e.get();
    }

    @Deprecated
    public DefaultTrackSelector(g.b bVar) {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, bVar);
    }

    public DefaultTrackSelector(Context context) {
        this(context, new a.b());
    }

    public DefaultTrackSelector(Context context, g.b bVar) {
        this(Parameters.getDefaults(context), bVar);
    }

    public DefaultTrackSelector(Parameters parameters, g.b bVar) {
        this.f25939d = bVar;
        this.f25940e = new AtomicReference<>(parameters);
    }
}
