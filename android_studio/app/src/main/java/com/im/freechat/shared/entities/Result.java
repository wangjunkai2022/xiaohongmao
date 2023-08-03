package com.im.freechat.shared.entities;

import androidx.exifinterface.media.ExifInterface;
import com.alipay.sdk.packet.d;
import io.sentry.h4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Result.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u0017*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0002\u0017\u0018B\u0011\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\r\u0010\r\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\nJL\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000023\u0010\u000f\u001a/\b\u0001\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0015JJ\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u000021\u0010\u000f\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u0011\u0010\b\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0007R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", ExifInterface.GPS_DIRECTION_TRUE, "", "value", "(Ljava/lang/Object;)V", "isFailure", "", "()Z", "isSuccess", "getValue$shared", "()Ljava/lang/Object;", "exceptionOrNull", "", "getOrNull", "onFailure", d.f6907q, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSuccess", "Companion", "Failure", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Result<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @h
    private final Object value;

    /* compiled from: Result.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\u0006\u0010\t\u001a\u0002H\u0005¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/shared/entities/Result$Companion;", "", "()V", "failure", "Lcom/im/freechat/shared/entities/Result;", ExifInterface.GPS_DIRECTION_TRUE, h4.b.f83287e, "", "success", "value", "(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final <T> Result<T> failure(@g Throwable exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            return new Result<>(new Failure(exception));
        }

        @g
        public final <T> Result<T> success(T t9) {
            return new Result<>(t9);
        }
    }

    /* compiled from: Result.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/shared/entities/Result$Failure;", "", h4.b.f83287e, "", "(Ljava/lang/Throwable;)V", "getException", "()Ljava/lang/Throwable;", "equals", "", "other", "hashCode", "", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Failure {
        @g
        private final Throwable exception;

        public Failure(@g Throwable exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
        }

        public boolean equals(@h Object obj) {
            return (obj instanceof Failure) && Intrinsics.areEqual(this.exception, ((Failure) obj).exception);
        }

        @g
        public final Throwable getException() {
            return this.exception;
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        @g
        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    public Result(@h Object obj) {
        this.value = obj;
    }

    @h
    public final Throwable exceptionOrNull() {
        Object obj = this.value;
        if (obj instanceof Failure) {
            return ((Failure) obj).getException();
        }
        return null;
    }

    @h
    public final T getOrNull() {
        if (isFailure()) {
            return null;
        }
        return (T) this.value;
    }

    @h
    public final Object getValue$shared() {
        return this.value;
    }

    public final boolean isFailure() {
        return this.value instanceof Failure;
    }

    public final boolean isSuccess() {
        return !(this.value instanceof Failure);
    }

    @h
    public final Object onFailure(@g Function2<? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function2, @g Continuation<? super Result<? extends T>> continuation) {
        exceptionOrNull();
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object onSuccess(@m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.Result<? extends T>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.shared.entities.Result$onSuccess$1
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.shared.entities.Result$onSuccess$1 r0 = (com.im.freechat.shared.entities.Result$onSuccess$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.shared.entities.Result$onSuccess$1 r0 = new com.im.freechat.shared.entities.Result$onSuccess$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            com.im.freechat.shared.entities.Result r5 = (com.im.freechat.shared.entities.Result) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r4.isSuccess()
            if (r6 == 0) goto L4b
            java.lang.Object r6 = r4.value
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.invoke(r6, r0)
            if (r5 != r1) goto L4b
            return r1
        L4b:
            r5 = r4
        L4c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.shared.entities.Result.onSuccess(kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
