package kotlinx.coroutines;

import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* compiled from: Executors.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 \u000b2\u00020\u00012\u00020\u0002:\u0001\u000bB\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0004\u001a\u00020\u0003H&R\u0014\u0010\b\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/v1;", "Lkotlinx/coroutines/n0;", "Ljava/io/Closeable;", "", "close", "Ljava/util/concurrent/Executor;", "p0", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "()V", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class v1 extends n0 implements Closeable {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f86843a = new a(null);

    /* compiled from: Executors.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/v1$a;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/v1;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    @ExperimentalStdlibApi
    /* loaded from: classes4.dex */
    public static final class a extends AbstractCoroutineContextKey<n0, v1> {

        /* compiled from: Executors.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "it", "Lkotlinx/coroutines/v1;", "a", "(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/v1;"}, k = 3, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.v1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0770a extends Lambda implements Function1<CoroutineContext.Element, v1> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0770a f86844a = new C0770a();

            C0770a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @m8.h
            /* renamed from: a */
            public final v1 invoke(@m8.g CoroutineContext.Element element) {
                if (element instanceof v1) {
                    return (v1) element;
                }
                return null;
            }
        }

        private a() {
            super(n0.Key, C0770a.f86844a);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public abstract void close();

    @m8.g
    public abstract Executor p0();
}
