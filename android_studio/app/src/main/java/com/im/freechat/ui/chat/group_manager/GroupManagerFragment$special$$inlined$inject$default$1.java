package com.im.freechat.ui.chat.group_manager;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: ComponentCallbackExt.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;", "org/koin/android/ext/android/ComponentCallbackExtKt$inject$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GroupManagerFragment$special$$inlined$inject$default$1 extends Lambda implements Function0<GroupManagerViewModel> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentCallbacks f42698a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f42699b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f42700c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupManagerFragment$special$$inlined$inject$default$1(ComponentCallbacks componentCallbacks, z8.a aVar, Function0 function0) {
        super(0);
        this.f42698a = componentCallbacks;
        this.f42699b = aVar;
        this.f42700c = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.im.freechat.ui.chat.group_manager.GroupManagerViewModel, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final GroupManagerViewModel invoke() {
        ComponentCallbacks componentCallbacks = this.f42698a;
        return org.koin.android.ext.android.a.a(componentCallbacks).p(Reflection.getOrCreateKotlinClass(GroupManagerViewModel.class), this.f42699b, this.f42700c);
    }
}
