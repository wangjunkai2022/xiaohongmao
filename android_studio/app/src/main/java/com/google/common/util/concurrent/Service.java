package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@h3.c
@h3.a
/* loaded from: classes2.dex */
public interface Service {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @h3.a
    /* loaded from: classes2.dex */
    public static abstract class State {
        public static final State FAILED;
        public static final State NEW;
        public static final State RUNNING;
        public static final State STARTING;
        public static final State STOPPING;
        public static final State TERMINATED;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ State[] f35029a;

        /* loaded from: classes2.dex */
        enum a extends State {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends State {
            b(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        }

        /* loaded from: classes2.dex */
        enum c extends State {
            c(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        }

        /* loaded from: classes2.dex */
        enum d extends State {
            d(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return false;
            }
        }

        /* loaded from: classes2.dex */
        enum e extends State {
            e(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return true;
            }
        }

        /* loaded from: classes2.dex */
        enum f extends State {
            f(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.util.concurrent.Service.State
            boolean a() {
                return true;
            }
        }

        static {
            a aVar = new a("NEW", 0);
            NEW = aVar;
            b bVar = new b("STARTING", 1);
            STARTING = bVar;
            c cVar = new c(kotlinx.coroutines.debug.internal.f.f85232b, 2);
            RUNNING = cVar;
            d dVar = new d("STOPPING", 3);
            STOPPING = dVar;
            e eVar = new e("TERMINATED", 4);
            TERMINATED = eVar;
            f fVar = new f("FAILED", 5);
            FAILED = fVar;
            f35029a = new State[]{aVar, bVar, cVar, dVar, eVar, fVar};
        }

        private State(String str, int i4) {
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) f35029a.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean a();
    }

    @h3.a
    /* loaded from: classes2.dex */
    public static abstract class b {
        public void a(State state, Throwable th) {
        }

        public void b() {
        }

        public void c() {
        }

        public void d(State state) {
        }

        public void e(State state) {
        }
    }

    void a(b bVar, Executor executor);

    void b(long j4, TimeUnit timeUnit) throws TimeoutException;

    void c(long j4, TimeUnit timeUnit) throws TimeoutException;

    void d();

    @CanIgnoreReturnValue
    Service e();

    State f();

    void g();

    Throwable h();

    @CanIgnoreReturnValue
    Service i();

    boolean isRunning();
}
