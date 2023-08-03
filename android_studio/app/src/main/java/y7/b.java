package y7;

import android.annotation.SuppressLint;
import com.google.android.exoplayer2.text.ttml.d;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import m8.g;
import m8.h;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import sun.misc.Signal;

/* compiled from: AgentPremain.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u00020\u0006H\u0002¨\u0006\f"}, d2 = {"Ly7/b;", "", "", "args", "Ljava/lang/instrument/Instrumentation;", "instrumentation", "", "d", "b", "<init>", "()V", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@SuppressLint({d.f25731r0})
@IgnoreJRERequirement
/* loaded from: classes4.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final b f94741a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f94742b;

    /* compiled from: AgentPremain.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ:\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¨\u0006\u000f"}, d2 = {"Ly7/b$a;", "Ljava/lang/instrument/ClassFileTransformer;", "Ljava/lang/ClassLoader;", "loader", "", "className", "Ljava/lang/Class;", "classBeingRedefined", "Ljava/security/ProtectionDomain;", "protectionDomain", "", "classfileBuffer", "a", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements ClassFileTransformer {
        @g

        /* renamed from: a  reason: collision with root package name */
        public static final a f94743a = new a();

        private a() {
        }

        @h
        public byte[] a(@g ClassLoader classLoader, @g String str, @h Class<?> cls, @g ProtectionDomain protectionDomain, @h byte[] bArr) {
            if (Intrinsics.areEqual(str, "kotlin/coroutines/jvm/internal/DebugProbesKt")) {
                kotlinx.coroutines.debug.internal.a.f85180a.b(true);
                return ByteStreamsKt.readBytes(classLoader.getResourceAsStream("DebugProbesKt.bin"));
            }
            return null;
        }
    }

    static {
        Object m70constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
            m70constructorimpl = Result.m70constructorimpl(property == null ? null : Boolean.valueOf(Boolean.parseBoolean(property)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = Result.m76isFailureimpl(m70constructorimpl) ? null : m70constructorimpl;
        f94742b = bool == null ? DebugProbesImpl.f85154a.u() : bool.booleanValue();
    }

    private b() {
    }

    private final void b() {
        try {
            Signal.handle(new Signal("TRAP"), y7.a.f94740a);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Signal signal) {
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f85154a;
        if (debugProbesImpl.z()) {
            debugProbesImpl.f(System.out);
        } else {
            System.out.println((Object) "Cannot perform coroutines dump, debug probes are disabled");
        }
    }

    @JvmStatic
    public static final void d(@h String str, @g Instrumentation instrumentation) {
        kotlinx.coroutines.debug.internal.a.f85180a.b(true);
        instrumentation.addTransformer(a.f94743a);
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f85154a;
        debugProbesImpl.K(f94742b);
        debugProbesImpl.x();
        f94741a.b();
    }
}
