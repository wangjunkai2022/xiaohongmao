package org.koin.android.error;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MissingAndroidContextException.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/koin/android/error/MissingAndroidContextException;", "", "s", "", "(Ljava/lang/String;)V", "koin-android_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MissingAndroidContextException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingAndroidContextException(@g String s9) {
        super(s9);
        Intrinsics.checkNotNullParameter(s9, "s");
    }
}
