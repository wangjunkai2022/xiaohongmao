package com.im.freechat.ui.chatlist;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: ComponentCallbackExt.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Object;", "org/koin/android/ext/android/ComponentCallbackExtKt$inject$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatListFragment$special$$inlined$inject$default$1 extends Lambda implements Function0<ChatListViewModel> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentCallbacks f43251a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f43252b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f43253c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatListFragment$special$$inlined$inject$default$1(ComponentCallbacks componentCallbacks, z8.a aVar, Function0 function0) {
        super(0);
        this.f43251a = componentCallbacks;
        this.f43252b = aVar;
        this.f43253c = function0;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.im.freechat.ui.chatlist.ChatListViewModel] */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final ChatListViewModel invoke() {
        ComponentCallbacks componentCallbacks = this.f43251a;
        return org.koin.android.ext.android.a.a(componentCallbacks).p(Reflection.getOrCreateKotlinClass(ChatListViewModel.class), this.f43252b, this.f43253c);
    }
}
