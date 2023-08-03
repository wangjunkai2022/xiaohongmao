package x4;

import com.alipay.sdk.packet.d;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo;
import com.qennnsad.aknkaksd.analytics.data.events.Event;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.analytics.data.events.Screen;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import io.sentry.protocol.w;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import u7.f;
import y4.e;

/* compiled from: Analytics.kt */
@f
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u001bB)\b\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J6\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0007J\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bJ\u0006\u0010\u0013\u001a\u00020\u0004J-\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0016\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0014\"\u0004\u0018\u00010\b¢\u0006\u0004\b\u0016\u0010\u0017J5\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0016\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0014\"\u0004\u0018\u00010\b¢\u0006\u0004\b\u0018\u0010\u0019J \u0010\u001b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\b¨\u0006&"}, d2 = {"Lx4/a;", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Event;", "event", "", "b", "Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;", "signature", "", "screenId", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", d.f6907q, "buttonTitle", "", "success", "g", "id", w.b.f83891c, "j", ContextChain.TAG_INFRA, "", "props", "d", "(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V", "c", "(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;Z[Ljava/lang/String;)V", "button", "a", "Lg5/a;", "localDataManager", "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;", "deviceInfo", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "prefsHelper", "Ly4/e;", "controller", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Ly4/e;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g

    /* renamed from: e */
    public static final C0850a f94660e = new C0850a(null);

    /* renamed from: f */
    public static final long f94661f = 1;
    @g

    /* renamed from: a */
    private final g5.a f94662a;
    @g

    /* renamed from: b */
    private final DeviceInfo f94663b;
    @g

    /* renamed from: c */
    private final PrefsHelper f94664c;
    @g

    /* renamed from: d */
    private final e f94665d;

    /* compiled from: Analytics.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lx4/a$a;", "", "", "PERIOD", "J", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: x4.a$a */
    /* loaded from: classes3.dex */
    public static final class C0850a {
        private C0850a() {
        }

        public /* synthetic */ C0850a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @u7.a
    public a(@g g5.a localDataManager, @g DeviceInfo deviceInfo, @g PrefsHelper prefsHelper, @g e controller) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(prefsHelper, "prefsHelper");
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.f94662a = localDataManager;
        this.f94663b = deviceInfo;
        this.f94664c = prefsHelper;
        this.f94665d = controller;
    }

    private final void b(Event event) {
        this.f94665d.e(event);
    }

    public static /* synthetic */ void h(a aVar, EventSignature eventSignature, String str, Screen.Action action, String str2, boolean z9, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            str2 = null;
        }
        aVar.g(eventSignature, str, action, str2, (i4 & 16) != 0 ? true : z9);
    }

    public final void a(@g String screenId, @g Screen.Action action, @h String str) {
        Intrinsics.checkNotNullParameter(screenId, "screenId");
        Intrinsics.checkNotNullParameter(action, "action");
        h(this, EventSignature.APP_CLICK, screenId, action, str, false, 16, null);
    }

    public final void c(@g EventSignature signature, boolean z9, @g String... props) {
        List filterNotNull;
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(props, "props");
        Event event = new Event(this.f94662a, this.f94663b, this.f94664c, signature.getReadableName(), null, z9 ? "success" : "failure", 16, null);
        String[] keys = signature.getKeys();
        if (keys != null) {
            filterNotNull = ArraysKt___ArraysKt.filterNotNull(props);
            int i4 = 0;
            for (Object obj : filterNotNull) {
                int i10 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                event.getParams().put(keys[i4], (String) obj);
                i4 = i10;
            }
        }
        b(event);
    }

    public final void d(@g EventSignature signature, @g String... props) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(props, "props");
        c(signature, true, (String[]) Arrays.copyOf(props, props.length));
    }

    @JvmOverloads
    public final void e(@g EventSignature signature, @g String screenId, @g Screen.Action action) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(screenId, "screenId");
        Intrinsics.checkNotNullParameter(action, "action");
        h(this, signature, screenId, action, null, false, 24, null);
    }

    @JvmOverloads
    public final void f(@g EventSignature signature, @g String screenId, @g Screen.Action action, @h String str) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(screenId, "screenId");
        Intrinsics.checkNotNullParameter(action, "action");
        h(this, signature, screenId, action, str, false, 16, null);
    }

    @JvmOverloads
    public final void g(@g EventSignature signature, @g String screenId, @g Screen.Action action, @h String str, boolean z9) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(screenId, "screenId");
        Intrinsics.checkNotNullParameter(action, "action");
        c(signature, z9, (String[]) Arrays.copyOf(new String[]{screenId, action.getTitle(), str}, 3));
    }

    public final void i() {
        this.f94665d.j();
    }

    public final void j(@g String id, @g String username) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(username, "username");
        this.f94665d.k(id, username);
    }
}
