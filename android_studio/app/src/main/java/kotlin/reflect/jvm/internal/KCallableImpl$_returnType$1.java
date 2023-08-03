package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KCallableImpl.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b\u0000\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "R", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class KCallableImpl$_returnType$1 extends Lambda implements Function0<KTypeImpl> {
    final /* synthetic */ KCallableImpl<R> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KCallableImpl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "R", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: kotlin.reflect.jvm.internal.KCallableImpl$_returnType$1$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function0<Type> {
        final /* synthetic */ KCallableImpl<R> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(KCallableImpl<? extends R> kCallableImpl) {
            super(0);
            this.this$0 = kCallableImpl;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final Type invoke() {
            Type extractContinuationArgument;
            extractContinuationArgument = this.this$0.extractContinuationArgument();
            return extractContinuationArgument == null ? this.this$0.getCaller().getReturnType() : extractContinuationArgument;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KCallableImpl$_returnType$1(KCallableImpl<? extends R> kCallableImpl) {
        super(0);
        this.this$0 = kCallableImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final KTypeImpl invoke() {
        KotlinType returnType = this.this$0.getDescriptor().getReturnType();
        Intrinsics.checkNotNull(returnType);
        return new KTypeImpl(returnType, new AnonymousClass1(this.this$0));
    }
}
