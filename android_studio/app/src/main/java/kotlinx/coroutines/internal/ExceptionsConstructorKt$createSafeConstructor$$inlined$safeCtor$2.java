package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: ExceptionsConstructor.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstructorKt$safeCtor$1"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2 extends Lambda implements Function1<Throwable, Throwable> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Constructor f86206a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2(Constructor constructor) {
        super(1);
        this.f86206a = constructor;
    }

    @Override // kotlin.jvm.functions.Function1
    @m8.h
    public final Throwable invoke(@m8.g Throwable th) {
        Object m70constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = this.f86206a.newInstance(th);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th2));
        }
        if (newInstance != null) {
            m70constructorimpl = Result.m70constructorimpl((Throwable) newInstance);
            if (Result.m76isFailureimpl(m70constructorimpl)) {
                m70constructorimpl = null;
            }
            return (Throwable) m70constructorimpl;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
    }
}
