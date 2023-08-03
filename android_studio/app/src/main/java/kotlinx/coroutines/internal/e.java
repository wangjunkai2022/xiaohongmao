package kotlinx.coroutines.internal;

import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: ExceptionsConstructor.kt */
@Metadata(bv = {}, d1 = {"\u0000#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0007*\u0001\b\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ*\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0005j\u0002`\u00062\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/internal/e;", "Lkotlinx/coroutines/internal/k;", "Ljava/lang/Class;", "", "key", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "a", "kotlinx/coroutines/internal/e$a", "b", "Lkotlinx/coroutines/internal/e$a;", ResponseCacheMiddleware.f44810o, "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@IgnoreJRERequirement
/* loaded from: classes4.dex */
final class e extends k {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final e f86254a = new e();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final a f86255b = new a();

    /* compiled from: ExceptionsConstructor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002j\u0002`\u00040\u0001J(\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002j\u0002`\u00042\f\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0014¨\u0006\b"}, d2 = {"kotlinx/coroutines/internal/e$a", "Ljava/lang/ClassValue;", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/Ctor;", "Ljava/lang/Class;", "type", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a extends ClassValue<Function1<? super Throwable, ? extends Throwable>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @m8.g
        /* renamed from: b */
        public Function1<Throwable, Throwable> a(@m8.h Class<?> cls) {
            Function1<Throwable, Throwable> b10;
            Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>");
            b10 = ExceptionsConstructorKt.b(cls);
            return b10;
        }
    }

    private e() {
    }

    @Override // kotlinx.coroutines.internal.k
    @m8.g
    public Function1<Throwable, Throwable> a(@m8.g Class<? extends Throwable> cls) {
        return (Function1) f86255b.get(cls);
    }
}
