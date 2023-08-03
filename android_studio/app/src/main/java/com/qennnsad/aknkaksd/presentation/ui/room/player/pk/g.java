package com.qennnsad.aknkaksd.presentation.ui.room.player.pk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.CountDownTimer;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.pk.Donator;
import com.qennnsad.aknkaksd.data.bean.pk.JoinPkSuccessMsg;
import com.qennnsad.aknkaksd.data.bean.pk.PkBroadcastMsg;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import com.qennnsad.aknkaksd.presentation.ui.widget.PkInfoPanel;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.o;
import com.qennnsad.aknkaksd.util.o0;
import io.sentry.protocol.Device;
import io.sentry.protocol.y;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.u0;
import timber.log.Timber;

/* compiled from: PkPlayerManager.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u001c2\u00020\u0001:\u0002\u0091\u0001BC\u0012\b\u0010\u008e\u0001\u001a\u00030\u008d\u0001\u0012\u0006\u0010a\u001a\u00020^\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010>\u001a\u00020\b\u0012\u0016\b\u0002\u0010g\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0005\u0018\u00010@¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\"\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bH\u0002J\b\u0010\f\u001a\u00020\u0005H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0018\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\bH\u0002J4\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002JK\u0010\u001c\u001a\u00020\u0005*\u00020\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\f\u0010\u001e\u001a\u00020\b*\u00020\u0017H\u0002J\u0012\u0010\u001f\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002J\u0012\u0010$\u001a\u00020\u00052\b\b\u0002\u0010!\u001a\u00020 H\u0002J!\u0010%\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\b\u0010\n\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b%\u0010&J\b\u0010'\u001a\u00020\u0005H\u0002J\b\u0010(\u001a\u00020\bH\u0002J\u001a\u0010,\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0017\u0018\u00010+2\u0006\u0010*\u001a\u00020)H\u0002J\u001a\u0010-\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0017\u0018\u00010+2\u0006\u0010*\u001a\u00020)H\u0002J\u000e\u0010.\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)J\u000e\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020)J\u001a\u00103\u001a\u00020\u00052\u0006\u00102\u001a\u0002012\b\b\u0002\u0010\u000f\u001a\u00020\bH\u0007J*\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u0002042\b\b\u0002\u0010\u000f\u001a\u00020\b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u0016\u00107\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u0006\u00108\u001a\u00020\u0005J\u000e\u0010:\u001a\u00020\u00052\u0006\u00109\u001a\u00020\bJ\u0006\u0010;\u001a\u00020\u0005J\u0006\u0010<\u001a\u00020\u0005J\u000e\u0010=\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\bJ&\u0010?\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010>\u001a\u00020\bH\u0007Jj\u0010G\u001a\u00020\u00052\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050@2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050@2\u0018\u0010D\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050C2\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0005\u0018\u00010@2\b\b\u0002\u0010F\u001a\u00020\bH\u0007J\u000e\u0010I\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0018J\u000e\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020\u0018J\u000e\u0010M\u001a\u00020\u00052\u0006\u0010L\u001a\u00020\bJ\u0006\u0010N\u001a\u00020\u0005J\u0012\u0010P\u001a\u00020\u00052\b\b\u0002\u0010O\u001a\u00020\bH\u0007J\u0012\u0010Q\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0017\u0018\u00010+H&J\u0012\u0010R\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0017\u0018\u00010+H&J\"\u0010T\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0010\b\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u0006\u0010U\u001a\u00020\bJ\u0010\u0010W\u001a\u00020\u00052\b\u00102\u001a\u0004\u0018\u00010VJ\u0006\u0010X\u001a\u00020\bJ\u0016\u0010Z\u001a\u00020\u00052\u0006\u00102\u001a\u00020V2\u0006\u0010Y\u001a\u00020\bJ\u0018\u0010\\\u001a\u00020\u00022\u0006\u00102\u001a\u00020V2\b\b\u0002\u0010[\u001a\u00020\bJ\u0006\u0010]\u001a\u00020\u0005R\u0014\u0010a\u001a\u00020^8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010`R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0014\u0010>\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010,R\"\u0010g\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0005\u0018\u00010@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR\u001a\u0010l\u001a\u00020)8\u0006X\u0086D¢\u0006\f\n\u0004\bh\u0010i\u001a\u0004\bj\u0010kR\u001a\u0010o\u001a\u00020)8\u0006X\u0086D¢\u0006\f\n\u0004\bm\u0010i\u001a\u0004\bn\u0010kR\"\u0010u\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010,\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR$\u0010|\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010w\u001a\u0004\bx\u0010y\"\u0004\bz\u0010{R\u0014\u0010~\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010XR\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010iR\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010iR%\u0010\u0085\u0001\u001a\u0011\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00170+0\u0083\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0016\u0010\u0084\u0001R\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001¨\u0006\u0092\u0001"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;", "", "", "durationLeftMillis", "Lkotlin/Function0;", "", "onTimerFinished", "D0", "", "show", com.google.android.exoplayer2.text.ttml.d.f25720l0, "o0", "v", "Landroid/view/ViewGroup;", "root", "rightSide", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;", "R", "C", "screenRoot", "playerRoot", "adjustComplete", "m", "Landroid/view/View;", "", "top", "bottom", com.google.android.exoplayer2.text.ttml.d.f25723n0, "p", "(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "K", "m0", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;", "result", "k0", "l0", "i0", "h0", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Ljava/lang/Boolean;)V", "L", "N", "", "url", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;", "Z", "c0", "w0", "newUrl", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;", "msg", "y0", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;", "data", "A0", "u", "Q", u0.f86831d, "P", "G0", "F0", "v0", "isWatcher", "t0", "Lkotlin/Function1;", "onPlayBegin", com.ksyun.media.player.d.d.ar, "Lkotlin/Function2;", "onPlayError", "onResolution", "secondary", "X", Device.b.f83600k, "H0", "mode", "b0", "forceDispose", ExifInterface.LATITUDE_SOUTH, "w", "onlySecondary", y.b.f83920h, "H", "I", "onPunishmentFinished", "e0", "M", "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;", "r", "J", "isSender", "I0", "print", "s", "U", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "c", "Landroid/view/ViewGroup;", "d", "e", "Lkotlin/jvm/functions/Function1;", "donatorClickListener", "f", "Ljava/lang/String;", "F", "()Ljava/lang/String;", "TAG", "g", "G", "TIMER_NA", "h", "O", "()Z", "a0", "(Z)V", "isPunishment", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;", ExifInterface.LONGITUDE_EAST, "()Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V", "lastBroadcast", "j", "MATCH_RESULT_DURATION", "k", "primaryStreamUrl", "l", "secondaryStreamUrl", "", "Ljava/util/List;", "videoToRelease", "n", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;", "infoPanel", "Landroid/os/CountDownTimer;", "o", "Landroid/os/CountDownTimer;", "timer", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class g {
    @m8.g

    /* renamed from: p */
    public static final a f53606p = new a(null);
    @m8.g
    @SuppressLint({"SimpleDateFormat"})

    /* renamed from: q */
    private static final SimpleDateFormat f53607q = new SimpleDateFormat("mm:ss");
    @m8.g

    /* renamed from: r */
    private static final Date f53608r = new Date();
    @m8.g

    /* renamed from: a */
    private final g5.a f53609a;
    @m8.g

    /* renamed from: b */
    private final m f53610b;
    @m8.g

    /* renamed from: c */
    private final ViewGroup f53611c;

    /* renamed from: d */
    private final boolean f53612d;
    @m8.h

    /* renamed from: e */
    private final Function1<String, Unit> f53613e;
    @m8.g

    /* renamed from: f */
    private final String f53614f;
    @m8.g

    /* renamed from: g */
    private final String f53615g;

    /* renamed from: h */
    private boolean f53616h;
    @m8.h

    /* renamed from: i */
    private PkBroadcastMsg f53617i;

    /* renamed from: j */
    private final long f53618j;
    @m8.h

    /* renamed from: k */
    private String f53619k;
    @m8.h

    /* renamed from: l */
    private String f53620l;
    @m8.g

    /* renamed from: m */
    private final List<com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View>> f53621m;
    @m8.h

    /* renamed from: n */
    private PkInfoPanel f53622n;
    @m8.h

    /* renamed from: o */
    private CountDownTimer f53623o;

    /* compiled from: PkPlayerManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J%\u0010\n\u001a\u00020\t*\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\u000e\u001a\u00020\t*\u00020\f2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0004H\u0007J3\u0010\u0011\u001a\u00020\t2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0014\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0014\u0010\u0016\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0002H\u0007R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;", "", "", "millis", "", "f", "Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;", "startTimeFromServer", "serverTime", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;", "g", "(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Ljava/lang/Long;J)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;", "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;", "pullAddress", "h", "", "interactionTime", "b", "(Ljava/lang/Long;JILjava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;", "url", "d", j.f47980a, "e", "Ljava/util/Date;", "dateContainer", "Ljava/util/Date;", "Ljava/text/SimpleDateFormat;", "timerFormat", "Ljava/text/SimpleDateFormat;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ i c(a aVar, Long l10, long j4, int i4, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                l10 = null;
            }
            return aVar.b(l10, j4, i4, str);
        }

        @JvmOverloads
        @m8.g
        public final i a(long j4, int i4, @m8.g String pullAddress) {
            Intrinsics.checkNotNullParameter(pullAddress, "pullAddress");
            return c(this, null, j4, i4, pullAddress, 1, null);
        }

        @JvmOverloads
        @m8.g
        public final i b(@m8.h Long l10, long j4, int i4, @m8.g String pullAddress) {
            Intrinsics.checkNotNullParameter(pullAddress, "pullAddress");
            o0.a("PkPlayerManager", "Build secondary data: startTimeFromServer=" + l10 + ", interactionTime=" + i4 + ", address:" + pullAddress);
            int i10 = i4 * 1000;
            long longValue = l10 == null ? j4 : l10.longValue();
            o.f54868a.e("SecondaryPlayerData", Long.valueOf(longValue), Long.valueOf(j4));
            return new i(pullAddress, i10 - (j4 - longValue));
        }

        @JvmStatic
        @m8.g
        public final JoinPkSuccessMsg d(@m8.g JoinPkSuccessMsg joinPkSuccessMsg, @m8.g String url) {
            JoinPkSuccessMsg copy;
            Intrinsics.checkNotNullParameter(joinPkSuccessMsg, "<this>");
            Intrinsics.checkNotNullParameter(url, "url");
            copy = joinPkSuccessMsg.copy((r20 & 1) != 0 ? joinPkSuccessMsg.type : null, (r20 & 2) != 0 ? joinPkSuccessMsg.pull_address : url, (r20 & 4) != 0 ? joinPkSuccessMsg.interaction_time : 0, (r20 & 8) != 0 ? joinPkSuccessMsg.watermark : null, (r20 & 16) != 0 ? joinPkSuccessMsg.start_time : null, (r20 & 32) != 0 ? joinPkSuccessMsg.sender_id : 0L, (r20 & 64) != 0 ? joinPkSuccessMsg.receiver_id : 0L);
            return copy;
        }

        @JvmStatic
        @m8.g
        public final JoinPkSuccessMsg e(@m8.g JoinPkSuccessMsg joinPkSuccessMsg, long j4) {
            JoinPkSuccessMsg copy;
            Intrinsics.checkNotNullParameter(joinPkSuccessMsg, "<this>");
            copy = joinPkSuccessMsg.copy((r20 & 1) != 0 ? joinPkSuccessMsg.type : null, (r20 & 2) != 0 ? joinPkSuccessMsg.pull_address : null, (r20 & 4) != 0 ? joinPkSuccessMsg.interaction_time : 0, (r20 & 8) != 0 ? joinPkSuccessMsg.watermark : null, (r20 & 16) != 0 ? joinPkSuccessMsg.start_time : Long.valueOf(j4), (r20 & 32) != 0 ? joinPkSuccessMsg.sender_id : 0L, (r20 & 64) != 0 ? joinPkSuccessMsg.receiver_id : 0L);
            return copy;
        }

        @JvmStatic
        @m8.g
        public final String f(long j4) {
            SimpleDateFormat simpleDateFormat = g.f53607q;
            Date date = g.f53608r;
            date.setTime(j4);
            String format = simpleDateFormat.format(date);
            Intrinsics.checkNotNullExpressionValue(format, "timerFormat.format(dateC….apply { time = millis })");
            return format;
        }

        @JvmStatic
        @m8.g
        public final i g(@m8.g JoinPkSuccessMsg joinPkSuccessMsg, @m8.h Long l10, long j4) {
            Intrinsics.checkNotNullParameter(joinPkSuccessMsg, "<this>");
            return b(l10, j4, joinPkSuccessMsg.interaction_time, joinPkSuccessMsg.pull_address);
        }

        @JvmStatic
        @m8.g
        public final i h(@m8.g PkBroadcastMsg pkBroadcastMsg, long j4, @m8.g String pullAddress) {
            Intrinsics.checkNotNullParameter(pkBroadcastMsg, "<this>");
            Intrinsics.checkNotNullParameter(pullAddress, "pullAddress");
            return b(Long.valueOf(pkBroadcastMsg.getStartTime() * 1000), j4, pkBroadcastMsg.getInteractionTime(), pullAddress);
        }
    }

    /* compiled from: PkPlayerManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MatchResult.values().length];
            iArr[MatchResult.Win.ordinal()] = 1;
            iArr[MatchResult.Loss.ordinal()] = 2;
            iArr[MatchResult.Draw.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: PkPlayerManager.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a */
        final /* synthetic */ boolean f53624a;

        /* renamed from: b */
        final /* synthetic */ g f53625b;

        /* renamed from: c */
        final /* synthetic */ boolean f53626c;

        /* renamed from: d */
        final /* synthetic */ boolean f53627d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z9, g gVar, boolean z10, boolean z11) {
            super(0);
            this.f53624a = z9;
            this.f53625b = gVar;
            this.f53626c = z10;
            this.f53627d = z11;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke */
        public final void invoke2() {
            com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I;
            if (!this.f53624a && (I = this.f53625b.I()) != null) {
                if (this.f53627d) {
                    I.setVisible(true);
                } else {
                    I.setVisible(false);
                    I.c();
                }
            }
            g gVar = this.f53625b;
            PkInfoPanel R = gVar.R(gVar.f53611c, this.f53626c);
            R.setOnDonatorClickListener(this.f53625b.f53613e);
            R.b();
            R.a();
            gVar.f53622n = R;
            if (this.f53627d) {
                ViewGroup viewGroup = this.f53625b.f53611c;
                viewGroup.setBackgroundResource(R.drawable.shape_pk_bg_blurred);
                viewGroup.findViewById(R.id.video_baseline).setVisibility(0);
                viewGroup.findViewById(R.id.layout_pk_timer).setVisibility(0);
                View findViewById = viewGroup.findViewById(R.id.lay_switch_to_right_competitor);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                PkInfoPanel pkInfoPanel = this.f53625b.f53622n;
                if (pkInfoPanel == null) {
                    return;
                }
                pkInfoPanel.setVisibility(0);
                return;
            }
            ViewGroup viewGroup2 = this.f53625b.f53611c;
            boolean z9 = this.f53624a;
            g gVar2 = this.f53625b;
            viewGroup2.setBackgroundResource(R.color.black);
            if (!z9) {
                viewGroup2.findViewById(R.id.video_baseline).setVisibility(8);
            }
            viewGroup2.findViewById(R.id.layout_pk_timer).setVisibility(8);
            View findViewById2 = viewGroup2.findViewById(R.id.lay_switch_to_right_competitor);
            if (findViewById2 != null) {
                findViewById2.setVisibility(8);
            }
            ((TextView) viewGroup2.findViewById(R.id.tv_pk_timer)).setText(gVar2.G());
            PkInfoPanel pkInfoPanel2 = this.f53625b.f53622n;
            if (pkInfoPanel2 != null) {
                pkInfoPanel2.setVisibility(8);
            }
            this.f53625b.v();
            this.f53625b.L();
            this.f53625b.m0(false);
            g.p0(this.f53625b, false, false, 2, null);
        }
    }

    /* compiled from: PkPlayerManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "", "onTick", "onFinish", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends CountDownTimer {

        /* renamed from: a */
        final /* synthetic */ TextView f53628a;

        /* renamed from: b */
        final /* synthetic */ g f53629b;

        /* renamed from: c */
        final /* synthetic */ Function0<Unit> f53630c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j4, TextView textView, g gVar, Function0<Unit> function0) {
            super(j4, 1000L);
            this.f53628a = textView;
            this.f53629b = gVar;
            this.f53630c = function0;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f53628a.setText(this.f53629b.G());
            Function0<Unit> function0 = this.f53630c;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            String f10;
            TextView textView = this.f53628a;
            g gVar = this.f53629b;
            if (gVar.M()) {
                f10 = gVar.G();
            } else {
                f10 = g.f53606p.f(j4);
            }
            textView.setText(f10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(@m8.g g5.a localDataManager, @m8.g m sourceFactory, @m8.g ViewGroup root, boolean z9, @m8.h Function1<? super String, Unit> function1) {
        List emptyList;
        List<com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View>> mutableList;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(root, "root");
        this.f53609a = localDataManager;
        this.f53610b = sourceFactory;
        this.f53611c = root;
        this.f53612d = z9;
        this.f53613e = function1;
        this.f53614f = "PkPlayerManager";
        this.f53615g = "--:--";
        this.f53618j = TimeUnit.SECONDS.toMillis(5L);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) emptyList);
        this.f53621m = mutableList;
    }

    @JvmStatic
    @m8.g
    public static final JoinPkSuccessMsg A(@m8.g JoinPkSuccessMsg joinPkSuccessMsg, @m8.g String str) {
        return f53606p.d(joinPkSuccessMsg, str);
    }

    @JvmStatic
    @m8.g
    public static final JoinPkSuccessMsg B(@m8.g JoinPkSuccessMsg joinPkSuccessMsg, long j4) {
        return f53606p.e(joinPkSuccessMsg, j4);
    }

    public static /* synthetic */ void B0(g gVar, JoinPkSuccessMsg joinPkSuccessMsg, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startPlaySecondary");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        gVar.y0(joinPkSuccessMsg, z9);
    }

    private final PkInfoPanel C(ViewGroup viewGroup, boolean z9) {
        PkInfoPanel normal = (PkInfoPanel) viewGroup.findViewById(R.id.pk_info_panel);
        PkInfoPanel reversed = (PkInfoPanel) viewGroup.findViewById(R.id.pk_info_panel_reversed);
        if (normal != null) {
            normal.setVisibility(8);
        }
        if (reversed != null) {
            reversed.setVisibility(8);
        }
        if (z9) {
            Intrinsics.checkNotNullExpressionValue(reversed, "reversed");
            return reversed;
        }
        Intrinsics.checkNotNullExpressionValue(normal, "normal");
        return normal;
    }

    public static /* synthetic */ void C0(g gVar, i iVar, boolean z9, Function0 function0, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startPlaySecondary");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        gVar.A0(iVar, z9, function0);
    }

    @JvmStatic
    @m8.g
    public static final String D(long j4) {
        return f53606p.f(j4);
    }

    private final void D0(long j4, Function0<Unit> function0) {
        String str = this.f53614f;
        o0.a(str, "yyy Starting Timer for " + j4 + " ms");
        TextView textView = (TextView) this.f53611c.findViewById(R.id.tv_pk_timer);
        CountDownTimer countDownTimer = this.f53623o;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (j4 <= 0) {
            textView.setText(this.f53615g);
        } else {
            this.f53623o = new d(j4, textView, this, function0).start();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void E0(g gVar, long j4, Function0 function0, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startTimer");
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        gVar.D0(j4, function0);
    }

    @JvmStatic
    @m8.g
    public static final i J0(@m8.g JoinPkSuccessMsg joinPkSuccessMsg, @m8.h Long l10, long j4) {
        return f53606p.g(joinPkSuccessMsg, l10, j4);
    }

    private final boolean K(View view) {
        Object tag = view.getTag(R.id.tag_pk_original_view_margins);
        return (tag instanceof List ? (List) tag : null) != null;
    }

    @JvmStatic
    @m8.g
    public static final i K0(@m8.g PkBroadcastMsg pkBroadcastMsg, long j4, @m8.g String str) {
        return f53606p.h(pkBroadcastMsg, j4, str);
    }

    public final void L() {
        ((ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_left)).setVisibility(8);
        ImageView imageView = (ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_right);
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = (ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_draw);
        if (imageView2 == null) {
            return;
        }
        imageView2.setVisibility(8);
    }

    private final boolean N() {
        ImageView imageView = (ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_left);
        if (imageView != null && imageView.getVisibility() == 0) {
            return true;
        }
        ImageView imageView2 = (ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_draw);
        return imageView2 != null && imageView2.getVisibility() == 0;
    }

    public final PkInfoPanel R(ViewGroup viewGroup, boolean z9) {
        PkInfoPanel C = C(viewGroup, z9);
        View findViewById = viewGroup.findViewById(R.id.lay_switch_to_right_competitor);
        if (z9) {
            View findViewById2 = findViewById != null ? findViewById.findViewById(R.id.comp_switch_icon) : null;
            if (findViewById2 != null) {
                findViewById2.setRotation(180.0f);
            }
        }
        return C;
    }

    public static /* synthetic */ void Y(g gVar, Function1 function1, Function1 function12, Function2 function2, Function1 function13, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setPlayCallback");
        }
        gVar.X(function1, function12, function2, function13, (i4 & 16) != 0 ? false : z9);
    }

    private final com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> Z(String str) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("Set url to " + H, new Object[0]);
            H.g(str);
            return H;
        }
        return null;
    }

    private final com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> c0(String str) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            I.g(str);
            return I;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void f0(g gVar, MatchResult matchResult, Function0 function0, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showMatchResult");
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        gVar.e0(matchResult, function0);
    }

    public static final void g0(g this$0, Function0 function0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.L();
        this$0.u(function0);
    }

    private final void h0(MatchResult matchResult, Boolean bool) {
        int i4;
        int i10;
        int i11 = b.$EnumSwitchMapping$0[matchResult.ordinal()];
        if (i11 == 1) {
            i4 = R.drawable.pk_win;
        } else if (i11 == 2) {
            i4 = R.drawable.pk_loss;
        } else if (i11 != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            i4 = R.drawable.pk_draw;
        }
        if (bool == null) {
            i10 = R.id.iv_pk_match_result_draw;
        } else {
            i10 = bool.booleanValue() ? R.id.iv_pk_match_result_left : R.id.iv_pk_match_result_right;
        }
        ImageView imageView = (ImageView) this.f53611c.findViewById(i10);
        imageView.setImageResource(i4);
        imageView.setVisibility(0);
    }

    private final void i0(MatchResult matchResult) {
        h0(matchResult, null);
    }

    static /* synthetic */ void j0(g gVar, MatchResult matchResult, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showMatchResultImageCenter");
        }
        if ((i4 & 1) != 0) {
            matchResult = MatchResult.Draw;
        }
        gVar.i0(matchResult);
    }

    private final void k0(MatchResult matchResult) {
        h0(matchResult, Boolean.TRUE);
    }

    private final void l0(MatchResult matchResult) {
        h0(matchResult, Boolean.FALSE);
    }

    private final void m(final ViewGroup viewGroup, final ViewGroup viewGroup2, final boolean z9, final Function0<Unit> function0) {
        o0.a(this.f53614f, "Adjusting Player Height..");
        Context context = viewGroup.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "screenRoot.context");
        DisplayMetrics g4 = h1.g(context);
        final int i4 = g4.widthPixels;
        final int i10 = g4.heightPixels;
        final int dimensionPixelSize = viewGroup.getResources().getDimensionPixelSize(R.dimen.activity_vertical_margin);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup.findViewById(R.id.room_header);
        final View findViewById = viewGroup3 != null ? viewGroup3.findViewById(R.id.scroll_text) : null;
        final ViewGroup viewGroup4 = (ViewGroup) viewGroup.findViewById(R.id.layout_svga_peerage_anims);
        final ViewGroup viewGroup5 = (ViewGroup) viewGroup.findViewById(R.id.room_ll_gift_bar);
        final ViewGroup viewGroup6 = (ViewGroup) viewGroup.findViewById(R.id.room_live_show_anim_layout);
        final View findViewById2 = viewGroup.findViewById(R.id.room_svga);
        final ViewGroup viewGroup7 = (ViewGroup) viewGroup.findViewById(R.id.room_peerage_login_info);
        final ViewGroup viewGroup8 = (ViewGroup) viewGroup.findViewById(R.id.layout_gift);
        final ViewGroup viewGroup9 = (ViewGroup) viewGroup.findViewById(R.id.layout_effect);
        float f10 = z9 ? 0.75f : 1.0f;
        if (findViewById != null) {
            final float f11 = f10;
            findViewById.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.o(i10, viewGroup, findViewById, i4, dimensionPixelSize, this, findViewById2, z9, viewGroup2, viewGroup4, viewGroup8, viewGroup9, viewGroup5, viewGroup6, viewGroup7, function0, f11);
                }
            });
        }
    }

    public final void m0(boolean z9) {
        ImageView imageView = (ImageView) this.f53611c.findViewById(R.id.ic_pk_timer);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Context context = imageView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        layoutParams.width = h1.f(context, z9 ? 50 : 20);
        imageView.setScaleType(z9 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_CROP);
        imageView.setImageResource(z9 ? R.drawable.ic_pk_timer_punishment : R.drawable.ic_pk_setting);
        this.f53616h = z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void n(g gVar, ViewGroup viewGroup, ViewGroup viewGroup2, boolean z9, Function0 function0, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: adjustPlayerHeight");
        }
        if ((i4 & 8) != 0) {
            function0 = null;
        }
        gVar.m(viewGroup, viewGroup2, z9, function0);
    }

    static /* synthetic */ void n0(g gVar, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showPunishmentHeader");
        }
        if ((i4 & 1) != 0) {
            z9 = true;
        }
        gVar.m0(z9);
    }

    public static final void o(int i4, ViewGroup screenRoot, View view, int i10, int i11, g this$0, View roomSvga, boolean z9, ViewGroup viewGroup, ViewGroup svgaPeerageAnims, ViewGroup viewGroup2, ViewGroup viewGroup3, ViewGroup giftBar, ViewGroup animLay, ViewGroup viewGroup4, Function0 function0, float f10) {
        Intrinsics.checkNotNullParameter(screenRoot, "$screenRoot");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int[] iArr = new int[2];
        int measuredHeight = i4 - screenRoot.getMeasuredHeight();
        view.getLocationOnScreen(iArr);
        int i12 = iArr[1];
        View findViewById = screenRoot.findViewById(R.id.room_recycler_chat);
        if (findViewById != null) {
            findViewById.getLocationOnScreen(iArr);
        }
        int i13 = (i4 - iArr[1]) - measuredHeight;
        int i14 = i10 / 2;
        Intrinsics.checkNotNullExpressionValue(roomSvga, "roomSvga");
        q(this$0, roomSvga, null, Integer.valueOf(i11 * 4), null, Integer.valueOf(i14), z9, 5, null);
        if (viewGroup != null) {
            q(this$0, viewGroup, Integer.valueOf(i12), Integer.valueOf(i13), null, null, z9, 12, null);
        }
        Intrinsics.checkNotNullExpressionValue(svgaPeerageAnims, "svgaPeerageAnims");
        q(this$0, svgaPeerageAnims, Integer.valueOf(i12), Integer.valueOf((i11 * 2) + i13), null, null, z9, 4, null);
        if (viewGroup2 != null) {
            q(this$0, viewGroup2, null, Integer.valueOf(i13), null, null, z9, 13, null);
        }
        if (viewGroup3 != null) {
            q(this$0, viewGroup3, null, Integer.valueOf(i13), null, null, z9, 13, null);
        }
        int i15 = (this$0.f53612d ? i13 / 4 : (i13 * 5) / 4) + ((i11 * 3) / 2);
        Intrinsics.checkNotNullExpressionValue(giftBar, "giftBar");
        q(this$0, giftBar, 0, Integer.valueOf(i15), Integer.valueOf((i11 * (-7)) / 2), null, z9, 8, null);
        ViewGroup.LayoutParams layoutParams = animLay.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        int marginEnd = ((ViewGroup.MarginLayoutParams) layoutParams).getMarginEnd();
        ViewGroup.LayoutParams layoutParams2 = animLay.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        int i16 = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
        ViewGroup.LayoutParams layoutParams3 = animLay.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        int i17 = ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
        Intrinsics.checkNotNullExpressionValue(animLay, "animLay");
        q(this$0, animLay, Integer.valueOf(i16 + i12), Integer.valueOf(i17 + i13), null, Integer.valueOf(marginEnd + i14), z9, 4, null);
        giftBar.setScaleX(f10);
        giftBar.setScaleY(f10);
        viewGroup4.setScaleX(f10);
        viewGroup4.setScaleY(f10);
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void o0(boolean z9, boolean z10) {
        PkInfoPanel pkInfoPanel = this.f53622n;
        if (pkInfoPanel != null) {
            if (!z9) {
                pkInfoPanel.findViewById(R.id.win_label_left).setVisibility(8);
                pkInfoPanel.findViewById(R.id.win_label_right).setVisibility(8);
            } else if (z10) {
                pkInfoPanel.findViewById(R.id.win_label_left).setVisibility(0);
            } else {
                pkInfoPanel.findViewById(R.id.win_label_right).setVisibility(0);
            }
        }
    }

    private final void p(View view, Integer num, Integer num2, Integer num3, Integer num4, boolean z9) {
        List listOf;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            if (z9) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                if (!K(view)) {
                    listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(marginLayoutParams.topMargin), Integer.valueOf(marginLayoutParams.bottomMargin), Integer.valueOf(marginLayoutParams.rightMargin), Integer.valueOf(marginLayoutParams.leftMargin)});
                    view.setTag(R.id.tag_pk_original_view_margins, listOf);
                }
                if (num != null) {
                    marginLayoutParams.topMargin = num.intValue();
                }
                if (num2 != null) {
                    marginLayoutParams.bottomMargin = num2.intValue();
                }
                if (num4 != null) {
                    marginLayoutParams.rightMargin = num4.intValue();
                }
                if (num3 != null) {
                    marginLayoutParams.leftMargin = num3.intValue();
                    return;
                }
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
            Object tag = view.getTag(R.id.tag_pk_original_view_margins);
            List list = tag instanceof List ? (List) tag : null;
            marginLayoutParams2.topMargin = list != null ? ((Number) list.get(0)).intValue() : 0;
            marginLayoutParams2.bottomMargin = list != null ? ((Number) list.get(1)).intValue() : 0;
            marginLayoutParams2.rightMargin = list != null ? ((Number) list.get(2)).intValue() : 0;
            marginLayoutParams2.leftMargin = list != null ? ((Number) list.get(3)).intValue() : 0;
        }
    }

    static /* synthetic */ void p0(g gVar, boolean z9, boolean z10, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showPunishmentLabels");
        }
        if ((i4 & 2) != 0) {
            z10 = true;
        }
        gVar.o0(z9, z10);
    }

    static /* synthetic */ void q(g gVar, View view, Integer num, Integer num2, Integer num3, Integer num4, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: applyMargins");
        }
        gVar.p(view, (i4 & 1) != 0 ? null : num, (i4 & 2) != 0 ? null : num2, (i4 & 4) != 0 ? null : num3, (i4 & 8) != 0 ? null : num4, z9);
    }

    public static /* synthetic */ long t(g gVar, PkBroadcastMsg pkBroadcastMsg, boolean z9, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return gVar.s(pkBroadcastMsg, z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: calculateRemainingTime");
    }

    public static /* synthetic */ void u0(g gVar, boolean z9, boolean z10, boolean z11, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSecondaryPlayer");
        }
        if ((i4 & 1) != 0) {
            z9 = true;
        }
        if ((i4 & 2) != 0) {
            z10 = false;
        }
        if ((i4 & 4) != 0) {
            z11 = false;
        }
        gVar.t0(z9, z10, z11);
    }

    public final void v() {
        CountDownTimer countDownTimer = this.f53623o;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f53623o = null;
    }

    public static /* synthetic */ void z(g gVar, boolean z9, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: exit");
        }
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        gVar.y(z9);
    }

    @JvmOverloads
    public final void A0(@m8.g i data, boolean z9, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(data, "data");
        String str = this.f53614f;
        o0.a(str, "yyy Starting secondary. Url: " + data.f() + ". Cached broadcast: " + this.f53617i);
        String f10 = data.f();
        this.f53620l = f10;
        if (!(f10 == null || f10.length() == 0)) {
            String str2 = this.f53620l;
            Intrinsics.checkNotNull(str2);
            c0(str2);
        }
        u0(this, false, z9, false, 5, null);
        u(function0);
    }

    @m8.h
    public final PkBroadcastMsg E() {
        return this.f53617i;
    }

    @m8.g
    public final String F() {
        return this.f53614f;
    }

    public final void F0() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.c();
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            I.c();
        }
    }

    @m8.g
    public final String G() {
        return this.f53615g;
    }

    public final void G0() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            I.c();
        }
    }

    @m8.h
    public abstract com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H();

    public final void H0(int i4) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.j(i4);
        }
    }

    @m8.h
    public abstract com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I();

    public final void I0(@m8.g PkBroadcastMsg msg, boolean z9) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        int collectionSizeOrDefault4;
        Intrinsics.checkNotNullParameter(msg, "msg");
        String str = this.f53614f;
        o0.a(str, "yyy Updating match info: IsSender=" + z9 + ", Msg: " + msg);
        r(msg);
        PkInfoPanel pkInfoPanel = this.f53622n;
        if (pkInfoPanel != null) {
            if (z9) {
                pkInfoPanel.i(msg.getCoinsSender(), msg.getCoinsReceiver());
            } else {
                pkInfoPanel.i(msg.getCoinsReceiver(), msg.getCoinsSender());
            }
            List<Donator> donatorsSender = msg.getDonatorsSender();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(donatorsSender, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Donator donator : donatorsSender) {
                arrayList.add(donator.getAvatar());
            }
            Object[] array = arrayList.toArray(new String[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            String[] strArr = (String[]) array;
            List<Donator> donatorsReceiver = msg.getDonatorsReceiver();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(donatorsReceiver, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (Donator donator2 : donatorsReceiver) {
                arrayList2.add(donator2.getAvatar());
            }
            Object[] array2 = arrayList2.toArray(new String[0]);
            Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            String[] strArr2 = (String[]) array2;
            if (z9) {
                pkInfoPanel.g(this.f53610b, (String[]) Arrays.copyOf(strArr, strArr.length));
                pkInfoPanel.h(this.f53610b, (String[]) Arrays.copyOf(strArr2, strArr2.length));
            } else {
                pkInfoPanel.g(this.f53610b, (String[]) Arrays.copyOf(strArr2, strArr2.length));
                pkInfoPanel.h(this.f53610b, (String[]) Arrays.copyOf(strArr, strArr.length));
            }
            List<Donator> donatorsSender2 = msg.getDonatorsSender();
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(donatorsSender2, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
            for (Donator donator3 : donatorsSender2) {
                arrayList3.add(String.valueOf(donator3.getId()));
            }
            Object[] array3 = arrayList3.toArray(new String[0]);
            Intrinsics.checkNotNull(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            String[] strArr3 = (String[]) array3;
            List<Donator> donatorsReceiver2 = msg.getDonatorsReceiver();
            collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(donatorsReceiver2, 10);
            ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault4);
            for (Donator donator4 : donatorsReceiver2) {
                arrayList4.add(String.valueOf(donator4.getId()));
            }
            Object[] array4 = arrayList4.toArray(new String[0]);
            Intrinsics.checkNotNull(array4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            String[] strArr4 = (String[]) array4;
            if (z9) {
                pkInfoPanel.setLeftIds((String[]) Arrays.copyOf(strArr3, strArr3.length));
                pkInfoPanel.setRightIds((String[]) Arrays.copyOf(strArr4, strArr4.length));
            } else {
                pkInfoPanel.setLeftIds((String[]) Arrays.copyOf(strArr4, strArr4.length));
                pkInfoPanel.setRightIds((String[]) Arrays.copyOf(strArr3, strArr3.length));
            }
            if (this.f53616h) {
                Integer leftScores = pkInfoPanel.getLeftScores();
                int intValue = leftScores != null ? leftScores.intValue() : 0;
                Integer rightScores = pkInfoPanel.getRightScores();
                int intValue2 = rightScores != null ? rightScores.intValue() : 0;
                if (intValue != intValue2) {
                    o0(true, intValue > intValue2);
                }
            }
        }
    }

    public final boolean J() {
        return this.f53617i != null;
    }

    public final boolean M() {
        ImageView imageView = (ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_left);
        if (imageView != null && imageView.getVisibility() == 0) {
            return true;
        }
        ImageView imageView2 = (ImageView) this.f53611c.findViewById(R.id.iv_pk_match_result_draw);
        return imageView2 != null && imageView2.getVisibility() == 0;
    }

    public final boolean O() {
        return this.f53616h;
    }

    public final void P(boolean z9) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.a(z9);
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            I.a(z9);
        }
    }

    public final void Q() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.e();
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            I.e();
        }
    }

    public final void S(boolean z9) {
        o0.g(this.f53614f, "Prepare detached VideoView to release");
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            this.f53621m.add(H);
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            this.f53621m.add(I);
        }
        if (z9) {
            w();
        }
    }

    public final void T(@m8.g String newUrl) {
        Intrinsics.checkNotNullParameter(newUrl, "newUrl");
        String str = this.f53614f;
        o0.a(str, "yyy Refresh primary. Url: " + newUrl);
        this.f53619k = newUrl;
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.i(newUrl);
        }
    }

    public final void U() {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.b();
        }
    }

    public final void V(@m8.h PkBroadcastMsg pkBroadcastMsg) {
        this.f53617i = pkBroadcastMsg;
    }

    @JvmOverloads
    public final void W(@m8.g Function1<? super View, Unit> onPlayBegin, @m8.g Function1<? super View, Unit> onPlayEnd, @m8.g Function2<? super View, ? super Boolean, Unit> onPlayError, @m8.h Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(onPlayBegin, "onPlayBegin");
        Intrinsics.checkNotNullParameter(onPlayEnd, "onPlayEnd");
        Intrinsics.checkNotNullParameter(onPlayError, "onPlayError");
        Y(this, onPlayBegin, onPlayEnd, onPlayError, function1, false, 16, null);
    }

    @JvmOverloads
    public final void X(@m8.g Function1<? super View, Unit> onPlayBegin, @m8.g Function1<? super View, Unit> onPlayEnd, @m8.g Function2<? super View, ? super Boolean, Unit> onPlayError, @m8.h Function1<? super String, Unit> function1, boolean z9) {
        Intrinsics.checkNotNullParameter(onPlayBegin, "onPlayBegin");
        Intrinsics.checkNotNullParameter(onPlayEnd, "onPlayEnd");
        Intrinsics.checkNotNullParameter(onPlayError, "onPlayError");
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = z9 ? I() : H();
        if (I != null) {
            I.h(onPlayBegin, onPlayEnd, onPlayError, function1);
        }
    }

    public final void a0(boolean z9) {
        this.f53616h = z9;
    }

    public final void b0(int i4) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = H();
        if (H != null) {
            H.d(i4);
        }
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (I != null) {
            I.d(i4);
        }
    }

    @JvmOverloads
    public final void d0(@m8.g MatchResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        f0(this, result, null, 2, null);
    }

    @JvmOverloads
    public final void e0(@m8.g MatchResult result, @m8.h final Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(result, "result");
        int i4 = b.$EnumSwitchMapping$0[result.ordinal()];
        if (i4 == 1) {
            k0(MatchResult.Win);
            l0(MatchResult.Loss);
        } else if (i4 == 2) {
            k0(MatchResult.Loss);
            l0(MatchResult.Win);
        } else if (i4 == 3) {
            j0(this, null, 1, null);
        }
        this.f53611c.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.f
            @Override // java.lang.Runnable
            public final void run() {
                g.g0(g.this, function0);
            }
        }, this.f53618j);
        u(function0);
    }

    @JvmOverloads
    public final void q0() {
        u0(this, false, false, false, 7, null);
    }

    public final void r(@m8.h PkBroadcastMsg pkBroadcastMsg) {
        this.f53617i = pkBroadcastMsg;
    }

    @JvmOverloads
    public final void r0(boolean z9) {
        u0(this, z9, false, false, 6, null);
    }

    public final long s(@m8.g PkBroadcastMsg msg, boolean z9) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        int interactionTime = msg.getInteractionTime();
        a aVar = f53606p;
        long e4 = aVar.b(Long.valueOf(msg.getStartTime() * 1000), this.f53609a.w(), interactionTime, "").e();
        if (z9) {
            String str = this.f53614f;
            o0.a(str, "Time Left (Broadcast): " + aVar.f(e4));
        }
        return e4;
    }

    @JvmOverloads
    public final void s0(boolean z9, boolean z10) {
        u0(this, z9, z10, false, 4, null);
    }

    @JvmOverloads
    public final void t0(boolean z9, boolean z10, boolean z11) {
        String str = this.f53614f;
        o0.a(str, "yyy Show Secondary Player: " + z9 + ", isWatcher: " + z11);
        m(this.f53611c, (ViewGroup) this.f53611c.findViewById(R.id.video_views_panel), z9, new c(z11, this, z10, z9));
        if (z9) {
            return;
        }
        PkInfoPanel pkInfoPanel = this.f53622n;
        if (pkInfoPanel != null) {
            pkInfoPanel.setVisibility(8);
        }
        PkInfoPanel pkInfoPanel2 = this.f53622n;
        if (pkInfoPanel2 != null) {
            pkInfoPanel2.b();
        }
        PkInfoPanel pkInfoPanel3 = this.f53622n;
        if (pkInfoPanel3 != null) {
            pkInfoPanel3.a();
        }
    }

    public final void u(@m8.h Function0<Unit> function0) {
        long e4;
        PkBroadcastMsg pkBroadcastMsg = this.f53617i;
        if (pkBroadcastMsg == null) {
            return;
        }
        a aVar = f53606p;
        Intrinsics.checkNotNull(pkBroadcastMsg);
        i h4 = aVar.h(pkBroadcastMsg, this.f53609a.w(), "");
        boolean z9 = h4.e() <= 0;
        if (z9) {
            long e10 = h4.e();
            PkBroadcastMsg pkBroadcastMsg2 = this.f53617i;
            Intrinsics.checkNotNull(pkBroadcastMsg2);
            e4 = e10 + (pkBroadcastMsg2.getPunishmentTime() * 1000);
        } else {
            e4 = h4.e();
        }
        String str = this.f53614f;
        o0.a(str, "yyy Maybe Punishment: " + z9 + ", duration: " + e4);
        if (z9 && e4 > 0) {
            n0(this, false, 1, null);
        } else {
            m0(false);
        }
        D0(e4, function0);
    }

    public final void v0(boolean z9) {
        String str = this.f53614f;
        o0.a(str, "yyy Show watcher decors. Rightside: " + z9);
        u0(this, false, z9, true, 1, null);
        u(null);
    }

    public final void w() {
        for (com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> gVar : this.f53621m) {
            String str = this.f53614f;
            o0.j(str, "Dispose detached VideoView " + gVar);
            gVar.c();
            gVar.destroy();
        }
        this.f53621m.clear();
    }

    public final void w0(@m8.g String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String str = this.f53614f;
        o0.a(str, "yyy Starting primary. Url: " + url);
        this.f53619k = url;
        Z(url);
    }

    @JvmOverloads
    public final void x() {
        z(this, false, 1, null);
    }

    @JvmOverloads
    public final void x0(@m8.g JoinPkSuccessMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        B0(this, msg, false, 2, null);
    }

    @JvmOverloads
    public final void y(boolean z9) {
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> H = z9 ? null : H();
        com.qennnsad.aknkaksd.presentation.ui.room.player.wrapper.g<? extends View> I = I();
        if (H != null || I != null) {
            if (H != null) {
                H.c();
            }
            if (H != null) {
                H.destroy();
            }
            if (I != null) {
                I.c();
            }
            if (I != null) {
                I.destroy();
            }
        }
        if (I != null) {
            I.setVisible(false);
        }
    }

    @JvmOverloads
    public final void y0(@m8.g JoinPkSuccessMsg msg, boolean z9) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        A0(f53606p.g(msg, msg.getStart_time(), this.f53609a.w()), z9, null);
    }

    @JvmOverloads
    public final void z0(@m8.g i data, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(data, "data");
        C0(this, data, false, function0, 2, null);
    }

    public /* synthetic */ g(g5.a aVar, m mVar, ViewGroup viewGroup, boolean z9, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, mVar, viewGroup, z9, (i4 & 16) != 0 ? null : function1);
    }
}
