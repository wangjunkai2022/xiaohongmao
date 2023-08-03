package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.flow.t;

/* compiled from: SavedStateHandle.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.B\u001f\b\u0016\u0012\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010(¢\u0006\u0004\b*\u0010+B\t\b\u0016¢\u0006\u0004\b*\u0010,J3\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u000bH\u0007J\u0011\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0007J+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0013H\u0007J \u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0004\b\u0015\u0010\u0016J(\u0010\u0019\u001a\u00020\u0018\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00018\u0000H\u0087\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u001b\u0010\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0003H\u0007R\"\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010!R$\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030#0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010!R(\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010!R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010'¨\u0006/"}, d2 = {"Landroidx/lifecycle/SavedStateHandle;", "", ExifInterface.GPS_DIRECTION_TRUE, "", "key", "", "hasInitialValue", "initialValue", "Landroidx/lifecycle/MutableLiveData;", "getLiveDataInternal", "(Ljava/lang/String;ZLjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "savedStateProvider", "contains", "getLiveData", "(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;", "Lkotlinx/coroutines/flow/h0;", "getStateFlow", "(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/coroutines/flow/h0;", "", SavedStateHandle.KEYS, "get", "(Ljava/lang/String;)Ljava/lang/Object;", "value", "", "set", "(Ljava/lang/String;Ljava/lang/Object;)V", "remove", "provider", "setSavedStateProvider", "clearSavedStateProvider", "", "regular", "Ljava/util/Map;", "savedStateProviders", "Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", "liveDatas", "Lkotlinx/coroutines/flow/t;", "flows", "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "", "initialState", "<init>", "(Ljava/util/Map;)V", "()V", "Companion", "SavingStateLiveData", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class SavedStateHandle {
    @m8.g
    private static final String KEYS = "keys";
    @m8.g
    private static final String VALUES = "values";
    @m8.g
    private final Map<String, t<Object>> flows;
    @m8.g
    private final Map<String, SavingStateLiveData<?>> liveDatas;
    @m8.g
    private final Map<String, Object> regular;
    @m8.g
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;
    @m8.g
    private final Map<String, SavedStateRegistry.SavedStateProvider> savedStateProviders;
    @m8.g
    public static final Companion Companion = new Companion(null);
    @m8.g
    private static final Class<? extends Object>[] ACCEPTABLE_CLASSES = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* compiled from: SavedStateHandle.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0007R \u0010\u0003\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$Companion;", "", "()V", "ACCEPTABLE_CLASSES", "", "Ljava/lang/Class;", "[Ljava/lang/Class;", "KEYS", "", "VALUES", "createHandle", "Landroidx/lifecycle/SavedStateHandle;", "restoredState", "Landroid/os/Bundle;", "defaultState", "validateValue", "", "value", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final SavedStateHandle createHandle(@m8.h Bundle bundle, @m8.h Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new SavedStateHandle();
                }
                HashMap hashMap = new HashMap();
                for (String key : bundle2.keySet()) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    hashMap.put(key, bundle2.get(key));
                }
                return new SavedStateHandle(hashMap);
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(SavedStateHandle.KEYS);
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if ((parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) ? false : true) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int size = parcelableArrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Object obj = parcelableArrayList.get(i4);
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
                    linkedHashMap.put((String) obj, parcelableArrayList2.get(i4));
                }
                return new SavedStateHandle(linkedHashMap);
            }
            throw new IllegalStateException("Invalid bundle passed as restored state".toString());
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean validateValue(@m8.h Object obj) {
            Class[] clsArr;
            if (obj == null) {
                return true;
            }
            for (Class cls : SavedStateHandle.ACCEPTABLE_CLASSES) {
                Intrinsics.checkNotNull(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    public SavedStateHandle(@m8.g Map<String, ? extends Object> initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.regular = linkedHashMap;
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.h
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                Bundle m26savedStateProvider$lambda0;
                m26savedStateProvider$lambda0 = SavedStateHandle.m26savedStateProvider$lambda0(SavedStateHandle.this);
                return m26savedStateProvider$lambda0;
            }
        };
        linkedHashMap.putAll(initialState);
    }

    @JvmStatic
    @m8.g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final SavedStateHandle createHandle(@m8.h Bundle bundle, @m8.h Bundle bundle2) {
        return Companion.createHandle(bundle, bundle2);
    }

    private final <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z9, T t9) {
        SavingStateLiveData<?> savingStateLiveData;
        SavingStateLiveData<?> savingStateLiveData2 = this.liveDatas.get(str);
        SavingStateLiveData<?> savingStateLiveData3 = savingStateLiveData2 instanceof MutableLiveData ? savingStateLiveData2 : null;
        if (savingStateLiveData3 != null) {
            return savingStateLiveData3;
        }
        if (this.regular.containsKey(str)) {
            savingStateLiveData = new SavingStateLiveData<>(this, str, this.regular.get(str));
        } else if (z9) {
            this.regular.put(str, t9);
            savingStateLiveData = new SavingStateLiveData<>(this, str, t9);
        } else {
            savingStateLiveData = new SavingStateLiveData<>(this, str);
        }
        this.liveDatas.put(str, savingStateLiveData);
        return savingStateLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: savedStateProvider$lambda-0  reason: not valid java name */
    public static final Bundle m26savedStateProvider$lambda0(SavedStateHandle this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        for (Map.Entry entry : MapsKt.toMap(this$0.savedStateProviders).entrySet()) {
            this$0.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
        }
        Set<String> keySet = this$0.regular.keySet();
        ArrayList arrayList = new ArrayList(keySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : keySet) {
            arrayList.add(str);
            arrayList2.add(this$0.regular.get(str));
        }
        return BundleKt.bundleOf(TuplesKt.to(KEYS, arrayList), TuplesKt.to("values", arrayList2));
    }

    @MainThread
    public final void clearSavedStateProvider(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.savedStateProviders.remove(key);
    }

    @MainThread
    public final boolean contains(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.regular.containsKey(key);
    }

    @m8.h
    @MainThread
    public final <T> T get(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.regular.get(key);
    }

    @m8.g
    @MainThread
    public final <T> MutableLiveData<T> getLiveData(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getLiveDataInternal(key, false, null);
    }

    @m8.g
    @MainThread
    public final <T> h0<T> getStateFlow(@m8.g String key, T t9) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, t<Object>> map = this.flows;
        t<Object> tVar = map.get(key);
        if (tVar == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, t9);
            }
            tVar = j0.a(this.regular.get(key));
            this.flows.put(key, tVar);
            map.put(key, tVar);
        }
        return k.m(tVar);
    }

    @m8.g
    @MainThread
    public final Set<String> keys() {
        Set plus;
        Set<String> plus2;
        plus = SetsKt___SetsKt.plus((Set) this.regular.keySet(), (Iterable) this.savedStateProviders.keySet());
        plus2 = SetsKt___SetsKt.plus(plus, (Iterable) this.liveDatas.keySet());
        return plus2;
    }

    @m8.h
    @MainThread
    public final <T> T remove(@m8.g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t9 = (T) this.regular.remove(key);
        SavingStateLiveData<?> remove = this.liveDatas.remove(key);
        if (remove != null) {
            remove.detach();
        }
        this.flows.remove(key);
        return t9;
    }

    @m8.g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.savedStateProvider;
    }

    @MainThread
    public final <T> void set(@m8.g String key, @m8.h T t9) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (Companion.validateValue(t9)) {
            SavingStateLiveData<?> savingStateLiveData = this.liveDatas.get(key);
            SavingStateLiveData<?> savingStateLiveData2 = savingStateLiveData instanceof MutableLiveData ? savingStateLiveData : null;
            if (savingStateLiveData2 != null) {
                savingStateLiveData2.setValue(t9);
            } else {
                this.regular.put(key, t9);
            }
            t<Object> tVar = this.flows.get(key);
            if (tVar == null) {
                return;
            }
            tVar.setValue(t9);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't put value with type ");
        Intrinsics.checkNotNull(t9);
        sb.append(t9.getClass());
        sb.append(" into saved state");
        throw new IllegalArgumentException(sb.toString());
    }

    @MainThread
    public final void setSavedStateProvider(@m8.g String key, @m8.g SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.savedStateProviders.put(key, provider);
    }

    @m8.g
    @MainThread
    public final <T> MutableLiveData<T> getLiveData(@m8.g String key, T t9) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getLiveDataInternal(key, true, t9);
    }

    /* compiled from: SavedStateHandle.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B!\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0002\u0010\bB\u0019\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\rR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/MutableLiveData;", "handle", "Landroidx/lifecycle/SavedStateHandle;", "key", "", "value", "(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V", "(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;)V", "detach", "", "setValue", "(Ljava/lang/Object;)V", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
        @m8.h
        private SavedStateHandle handle;
        @m8.g
        private String key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(@m8.h SavedStateHandle savedStateHandle, @m8.g String key, T t9) {
            super(t9);
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }

        public final void detach() {
            this.handle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T t9) {
            SavedStateHandle savedStateHandle = this.handle;
            if (savedStateHandle != null) {
                savedStateHandle.regular.put(this.key, t9);
                t tVar = (t) savedStateHandle.flows.get(this.key);
                if (tVar != null) {
                    tVar.setValue(t9);
                }
            }
            super.setValue(t9);
        }

        public SavingStateLiveData(@m8.h SavedStateHandle savedStateHandle, @m8.g String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }
    }

    public SavedStateHandle() {
        this.regular = new LinkedHashMap();
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: androidx.lifecycle.h
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                Bundle m26savedStateProvider$lambda0;
                m26savedStateProvider$lambda0 = SavedStateHandle.m26savedStateProvider$lambda0(SavedStateHandle.this);
                return m26savedStateProvider$lambda0;
            }
        };
    }
}
