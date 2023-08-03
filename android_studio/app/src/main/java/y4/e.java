package y4;

import android.content.Context;
import com.posthog.android.PostHog;
import com.posthog.android.s;
import com.qennnsad.aknkaksd.analytics.data.events.Event;
import com.qennnsad.aknkaksd.analytics.data.events.EventKt;
import com.qennnsad.aknkaksd.util.o0;
import io.reactivex.z;
import io.sentry.protocol.w;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import m8.g;

/* compiled from: AnalyticsController.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000f"}, d2 = {"Ly4/e;", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Event;", "event", "", "e", "", "id", w.b.f83891c, "k", "j", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Context f94734a;

    @u7.a
    public e(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f94734a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Event f(Event event) {
        Intrinsics.checkNotNullParameter(event, "$event");
        return event;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e this$0, Event e4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        o0.a(x4.b.f94666a, "Recording event: " + e4);
        Intrinsics.checkNotNullExpressionValue(e4, "e");
        s mapToPostHogProps = EventKt.mapToPostHogProps(e4);
        PostHog U = PostHog.U(this$0.f94734a);
        U.f(e4.getName(), mapToPostHogProps);
        U.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Ref.ObjectRef disposable, Throwable th) {
        Intrinsics.checkNotNullParameter(disposable, "$disposable");
        o0.d(x4.b.f94666a, "Error recording event: " + th.getLocalizedMessage(), th);
        io.reactivex.disposables.c cVar = (io.reactivex.disposables.c) disposable.element;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(Ref.ObjectRef disposable) {
        Intrinsics.checkNotNullParameter(disposable, "$disposable");
        io.reactivex.disposables.c cVar = (io.reactivex.disposables.c) disposable.element;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [T, io.reactivex.disposables.c] */
    public final void e(@g final Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = z.fromCallable(new Callable() { // from class: y4.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Event f10;
                f10 = e.f(Event.this);
                return f10;
            }
        }).subscribeOn(io.reactivex.schedulers.b.d()).subscribe(new n7.g() { // from class: y4.d
            @Override // n7.g
            public final void accept(Object obj) {
                e.g(e.this, (Event) obj);
            }
        }, new n7.g() { // from class: y4.c
            @Override // n7.g
            public final void accept(Object obj) {
                e.h(Ref.ObjectRef.this, (Throwable) obj);
            }
        }, new n7.a() { // from class: y4.b
            @Override // n7.a
            public final void run() {
                e.i(Ref.ObjectRef.this);
            }
        });
    }

    public final void j() {
        PostHog.U(this.f94734a).L();
    }

    public final void k(@g String id, @g String username) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(username, "username");
        o0.a(x4.b.f94666a, "xxx POSTHOG USER ID SET: " + id + ", Name: " + username);
        s sVar = new s();
        sVar.o("id", id);
        sVar.o(w.b.f83891c, username);
        PostHog.U(this.f94734a).A(id, sVar);
    }
}
