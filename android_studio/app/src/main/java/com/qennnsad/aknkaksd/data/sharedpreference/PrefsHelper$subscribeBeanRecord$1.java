package com.qennnsad.aknkaksd.data.sharedpreference;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Observer;
import com.google.gson.Gson;
import com.qennnsad.aknkaksd.util.DES;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: PrefsHelper.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "Lkotlin/Pair;", "", "", "onChanged"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PrefsHelper$subscribeBeanRecord$1<T> implements Observer {
    final /* synthetic */ boolean $decrypt;
    final /* synthetic */ String $key;
    final /* synthetic */ Observer<? super T> $observer;
    final /* synthetic */ PrefsHelper this$0;

    public PrefsHelper$subscribeBeanRecord$1(String str, boolean z9, Observer<? super T> observer, PrefsHelper prefsHelper) {
        this.$key = str;
        this.$decrypt = z9;
        this.$observer = observer;
        this.this$0 = prefsHelper;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(@h Pair<String, ? extends Object> pair) {
        String str;
        Object obj = null;
        if (Intrinsics.areEqual(pair != null ? pair.getFirst() : null, this.$key)) {
            if (this.$decrypt) {
                Observer<? super T> observer = this.$observer;
                Object second = pair.getSecond();
                Intrinsics.checkNotNull(second, "null cannot be cast to non-null type kotlin.String");
                String str2 = (String) second;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        str = DES.decryptDES(str2);
                    } catch (Exception e4) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Decrypt ");
                        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                        sb.append(Object.class.getSimpleName());
                        String sb2 = sb.toString();
                        o0.c(sb2, "decode--eeeeeeeeee: " + e4);
                        str = null;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        Gson gson = new Gson();
                        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
                        obj = gson.fromJson(str, (Class<Object>) Object.class);
                    }
                }
                observer.onChanged(obj);
                return;
            }
            Observer<? super T> observer2 = this.$observer;
            Gson gson2 = this.this$0.getGson();
            Object second2 = pair.getSecond();
            Intrinsics.checkNotNull(second2, "null cannot be cast to non-null type kotlin.String");
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            observer2.onChanged((Object) gson2.fromJson((String) second2, (Class<Object>) Object.class));
        }
    }
}
