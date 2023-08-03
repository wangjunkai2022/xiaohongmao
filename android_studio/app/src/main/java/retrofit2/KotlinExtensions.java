package retrofit2;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.q;
import kotlinx.coroutines.r;
import m8.g;
import m8.h;

/* compiled from: KotlinExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a+\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0004\u001a'\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0007\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u001a\u0010\b\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u0001*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\f*\u00060\rj\u0002`\u000eH\u0080@ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"await", ExifInterface.GPS_DIRECTION_TRUE, "", "Lretrofit2/Call;", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "awaitResponse", "Lretrofit2/Response;", "create", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "suspendAndThrow", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrofit"}, k = 2, mv = {1, 1, 15})
@JvmName(name = "KotlinExtensions")
/* loaded from: classes5.dex */
public final class KotlinExtensions {
    @h
    public static final <T> Object await(@g Call<T> call, @g Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final r rVar = new r(intercepted, 1);
        rVar.k(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(@g Call<T> call2, @g Throwable th) {
                q qVar = q.this;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@g Call<T> call2, @g Response<T> response) {
                if (response.isSuccessful()) {
                    Object body = response.body();
                    if (body == null) {
                        Object tag = call2.request().tag(Invocation.class);
                        if (tag == null) {
                            Intrinsics.throwNpe();
                        }
                        Intrinsics.checkExpressionValueIsNotNull(tag, "call.request().tag(Invocation::class.java)!!");
                        Method method = ((Invocation) tag).method();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Response from ");
                        Intrinsics.checkExpressionValueIsNotNull(method, "method");
                        Class<?> declaringClass = method.getDeclaringClass();
                        Intrinsics.checkExpressionValueIsNotNull(declaringClass, "method.declaringClass");
                        sb.append(declaringClass.getName());
                        sb.append('.');
                        sb.append(method.getName());
                        sb.append(" was null but response body type was declared as non-null");
                        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb.toString());
                        q qVar = q.this;
                        Result.Companion companion = Result.Companion;
                        qVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(kotlinNullPointerException)));
                        return;
                    }
                    q qVar2 = q.this;
                    Result.Companion companion2 = Result.Companion;
                    qVar2.resumeWith(Result.m70constructorimpl(body));
                    return;
                }
                q qVar3 = q.this;
                HttpException httpException = new HttpException(response);
                Result.Companion companion3 = Result.Companion;
                qVar3.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(httpException)));
            }
        });
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    @h
    @JvmName(name = "awaitNullable")
    public static final <T> Object awaitNullable(@g Call<T> call, @g Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final r rVar = new r(intercepted, 1);
        rVar.k(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(@g Call<T> call2, @g Throwable th) {
                q qVar = q.this;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@g Call<T> call2, @g Response<T> response) {
                if (response.isSuccessful()) {
                    q qVar = q.this;
                    Object body = response.body();
                    Result.Companion companion = Result.Companion;
                    qVar.resumeWith(Result.m70constructorimpl(body));
                    return;
                }
                q qVar2 = q.this;
                HttpException httpException = new HttpException(response);
                Result.Companion companion2 = Result.Companion;
                qVar2.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(httpException)));
            }
        });
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    @h
    public static final <T> Object awaitResponse(@g Call<T> call, @g Continuation<? super Response<T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final r rVar = new r(intercepted, 1);
        rVar.k(new KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(@g Call<T> call2, @g Throwable th) {
                q qVar = q.this;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@g Call<T> call2, @g Response<T> response) {
                q qVar = q.this;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m70constructorimpl(response));
            }
        });
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object suspendAndThrow(@m8.g final java.lang.Exception r4, @m8.g kotlin.coroutines.Continuation<?> r5) {
        /*
            boolean r0 = r5 instanceof retrofit2.KotlinExtensions$suspendAndThrow$1
            if (r0 == 0) goto L13
            r0 = r5
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = (retrofit2.KotlinExtensions$suspendAndThrow$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = new retrofit2.KotlinExtensions$suspendAndThrow$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            java.lang.Exception r4 = (java.lang.Exception) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5c
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.L$0 = r4
            r0.label = r3
            kotlinx.coroutines.n0 r5 = kotlinx.coroutines.i1.a()
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 r3 = new retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
            r3.<init>()
            r5.dispatch(r2, r3)
            java.lang.Object r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r5) goto L59
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L59:
            if (r4 != r1) goto L5c
            return r1
        L5c:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.KotlinExtensions.suspendAndThrow(java.lang.Exception, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
