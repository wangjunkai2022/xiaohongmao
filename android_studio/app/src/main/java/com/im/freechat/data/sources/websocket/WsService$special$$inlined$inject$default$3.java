package com.im.freechat.data.sources.websocket;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import com.im.freechat.domain.d;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import z8.a;

/* compiled from: ComponentCallbackExt.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;", "org/koin/android/ext/android/ComponentCallbackExtKt$inject$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsService$special$$inlined$inject$default$3 extends Lambda implements Function0<d> {
    final /* synthetic */ Function0 $parameters;
    final /* synthetic */ a $qualifier;
    final /* synthetic */ ComponentCallbacks $this_inject;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WsService$special$$inlined$inject$default$3(ComponentCallbacks componentCallbacks, a aVar, Function0 function0) {
        super(0);
        this.$this_inject = componentCallbacks;
        this.$qualifier = aVar;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.im.freechat.domain.d, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final d invoke() {
        ComponentCallbacks componentCallbacks = this.$this_inject;
        return org.koin.android.ext.android.a.a(componentCallbacks).p(Reflection.getOrCreateKotlinClass(d.class), this.$qualifier, this.$parameters);
    }
}
