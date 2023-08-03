package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: ExceptionsConstructor.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "e", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ExceptionsConstructorKt$safeCtor$1 extends Lambda implements Function1<Throwable, Throwable> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function1<Throwable, Throwable> f86210a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ExceptionsConstructorKt$safeCtor$1(Function1<? super Throwable, ? extends Throwable> function1) {
        super(1);
        this.f86210a = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    @m8.h
    public final Throwable invoke(@m8.g Throwable th) {
        Object m70constructorimpl;
        Function1<Throwable, Throwable> function1 = this.f86210a;
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(function1.invoke(th));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m76isFailureimpl(m70constructorimpl)) {
            m70constructorimpl = null;
        }
        return (Throwable) m70constructorimpl;
    }
}
