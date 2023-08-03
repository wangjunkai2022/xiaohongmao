package com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper;

import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.u0;
import m8.h;

/* compiled from: VideoView.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000*\n\b\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u0003J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH&J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH&J\b\u0010\r\u001a\u00020\u0006H&J\b\u0010\u000e\u001a\u00020\u0006H&J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH&J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000fH&J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0004H&J\b\u0010\u0016\u001a\u00020\u0006H&J\b\u0010\u0017\u001a\u00020\u0006H&J`\u0010\u001e\u001a\u00020\u00062\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u00182\u0018\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u001b2\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0018H&R\u001c\u0010\u001f\u001a\u00020\u00048&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"\u0082\u0001\u0001#¨\u0006$"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;", "Landroid/view/View;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "", "visible", "", "setVisible", "", "url", "g", "newUrl", ContextChain.TAG_INFRA, "b", "c", "", "mode", "d", Device.b.f83600k, "j", u0.f86831d, "a", "e", "destroy", "Lkotlin/Function1;", "onPlayBegin", com.ksyun.media.player.d.d.ar, "Lkotlin/Function2;", "onPlayError", "onResolution", "h", "isDestroyed", "()Z", "f", "(Z)V", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface g<V extends View> {
    void a(boolean z9);

    void b();

    void c();

    void d(int i4);

    void destroy();

    void e();

    void f(boolean z9);

    void g(@m8.g String str);

    void h(@m8.g Function1<? super V, Unit> function1, @m8.g Function1<? super V, Unit> function12, @m8.g Function2<? super V, ? super Boolean, Unit> function2, @h Function1<? super String, Unit> function13);

    void i(@m8.g String str);

    boolean isDestroyed();

    void j(int i4);

    void setVisible(boolean z9);
}
