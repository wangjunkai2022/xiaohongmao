package kotlinx.coroutines.selects;

import io.sentry.h4;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.l1;

/* compiled from: Select.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0003H&J\u001a\u0010\b\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH&J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H&R\u0014\u0010\u0015\u001a\u00020\u00038&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/selects/f;", "R", "", "", "t", "Lkotlinx/coroutines/internal/x$d;", "Lkotlinx/coroutines/internal/PrepareOp;", "otherOp", "q", "Lkotlinx/coroutines/internal/b;", "desc", "w", "", h4.b.f83287e, "", "v", "Lkotlinx/coroutines/l1;", "handle", "p", "h", "()Z", "isSelected", "Lkotlin/coroutines/Continuation;", "u", "()Lkotlin/coroutines/Continuation;", "completion", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public interface f<R> {
    boolean h();

    void p(@m8.g l1 l1Var);

    @m8.h
    Object q(@m8.h x.d dVar);

    boolean t();

    @m8.g
    Continuation<R> u();

    void v(@m8.g Throwable th);

    @m8.h
    Object w(@m8.g kotlinx.coroutines.internal.b bVar);
}
