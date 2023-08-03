package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.KParameter;
import m8.g;
import m8.h;

/* compiled from: KCallables.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u001a9\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u00100\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u0012\"\u0004\u0018\u00010\u0013H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a7\u0010\u0015\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u00100\u00022\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0016H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0007\"$\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"$\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006\"(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b*\u0006\u0012\u0002\b\u00030\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"extensionReceiverParameter", "Lkotlin/reflect/KParameter;", "Lkotlin/reflect/KCallable;", "getExtensionReceiverParameter$annotations", "(Lkotlin/reflect/KCallable;)V", "getExtensionReceiverParameter", "(Lkotlin/reflect/KCallable;)Lkotlin/reflect/KParameter;", "instanceParameter", "getInstanceParameter$annotations", "getInstanceParameter", "valueParameters", "", "getValueParameters$annotations", "getValueParameters", "(Lkotlin/reflect/KCallable;)Ljava/util/List;", "callSuspend", "R", "args", "", "", "(Lkotlin/reflect/KCallable;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "callSuspendBy", "", "(Lkotlin/reflect/KCallable;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findParameterByName", "name", "", "kotlin-reflection"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "KCallables")
/* loaded from: classes4.dex */
public final class KCallables {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @kotlin.SinceKotlin(version = "1.3")
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object callSuspend(@m8.g kotlin.reflect.KCallable<? extends R> r4, @m8.g java.lang.Object[] r5, @m8.g kotlin.coroutines.Continuation<? super R> r6) {
        /*
            boolean r0 = r6 instanceof kotlin.reflect.full.KCallables$callSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlin.reflect.full.KCallables$callSuspend$1 r0 = (kotlin.reflect.full.KCallables$callSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlin.reflect.full.KCallables$callSuspend$1 r0 = new kotlin.reflect.full.KCallables$callSuspend$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r4 = r0.L$1
            java.lang.Object[] r4 = (java.lang.Object[]) r4
            java.lang.Object r4 = r0.L$0
            kotlin.reflect.KCallable r4 = (kotlin.reflect.KCallable) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L7c
        L31:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L39:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r4.isSuspend()
            if (r6 != 0) goto L4c
            int r6 = r5.length
            java.lang.Object[] r5 = java.util.Arrays.copyOf(r5, r6)
            java.lang.Object r4 = r4.call(r5)
            return r4
        L4c:
            boolean r6 = r4 instanceof kotlin.reflect.KFunction
            if (r6 == 0) goto L9e
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            kotlin.jvm.internal.SpreadBuilder r6 = new kotlin.jvm.internal.SpreadBuilder
            r2 = 2
            r6.<init>(r2)
            r6.addSpread(r5)
            r6.add(r0)
            int r5 = r6.size()
            java.lang.Object[] r5 = new java.lang.Object[r5]
            java.lang.Object[] r5 = r6.toArray(r5)
            java.lang.Object r6 = r4.call(r5)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r5) goto L79
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L79:
            if (r6 != r1) goto L7c
            return r1
        L7c:
            kotlin.reflect.KType r5 = r4.getReturnType()
            kotlin.reflect.KClassifier r5 = r5.getClassifier()
            java.lang.Class<kotlin.Unit> r0 = kotlin.Unit.class
            kotlin.reflect.KClass r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L9d
            kotlin.reflect.KType r4 = r4.getReturnType()
            boolean r4 = r4.isMarkedNullable()
            if (r4 != 0) goto L9d
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L9d:
            return r6
        L9e:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "Cannot callSuspend on a property "
            r6.append(r0)
            r6.append(r4)
            java.lang.String r4 = ": suspend properties are not supported yet"
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.full.KCallables.callSuspend(kotlin.reflect.KCallable, java.lang.Object[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    @kotlin.SinceKotlin(version = "1.3")
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object callSuspendBy(@m8.g kotlin.reflect.KCallable<? extends R> r4, @m8.g java.util.Map<kotlin.reflect.KParameter, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super R> r6) {
        /*
            boolean r0 = r6 instanceof kotlin.reflect.full.KCallables$callSuspendBy$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlin.reflect.full.KCallables$callSuspendBy$1 r0 = (kotlin.reflect.full.KCallables$callSuspendBy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlin.reflect.full.KCallables$callSuspendBy$1 r0 = new kotlin.reflect.full.KCallables$callSuspendBy$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r4 = r0.L$2
            kotlin.reflect.jvm.internal.KCallableImpl r4 = (kotlin.reflect.jvm.internal.KCallableImpl) r4
            java.lang.Object r4 = r0.L$1
            java.util.Map r4 = (java.util.Map) r4
            java.lang.Object r4 = r0.L$0
            kotlin.reflect.KCallable r4 = (kotlin.reflect.KCallable) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6d
        L35:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3d:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r4.isSuspend()
            if (r6 != 0) goto L4b
            java.lang.Object r4 = r4.callBy(r5)
            return r4
        L4b:
            boolean r6 = r4 instanceof kotlin.reflect.KFunction
            if (r6 == 0) goto La6
            kotlin.reflect.jvm.internal.KCallableImpl r6 = kotlin.reflect.jvm.internal.UtilKt.asKCallableImpl(r4)
            if (r6 == 0) goto L8f
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r6 = r6.callDefaultMethod$kotlin_reflection(r5, r0)
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r5) goto L6a
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L6a:
            if (r6 != r1) goto L6d
            return r1
        L6d:
            kotlin.reflect.KType r5 = r4.getReturnType()
            kotlin.reflect.KClassifier r5 = r5.getClassifier()
            java.lang.Class<kotlin.Unit> r0 = kotlin.Unit.class
            kotlin.reflect.KClass r0 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r0)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L8e
            kotlin.reflect.KType r4 = r4.getReturnType()
            boolean r4 = r4.isMarkedNullable()
            if (r4 != 0) goto L8e
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L8e:
            return r6
        L8f:
            kotlin.reflect.jvm.internal.KotlinReflectionInternalError r5 = new kotlin.reflect.jvm.internal.KotlinReflectionInternalError
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "This callable does not support a default call: "
            r6.append(r0)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r5.<init>(r4)
            throw r5
        La6:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "Cannot callSuspendBy on a property "
            r6.append(r0)
            r6.append(r4)
            java.lang.String r4 = ": suspend properties are not supported yet"
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.full.KCallables.callSuspendBy(kotlin.reflect.KCallable, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @SinceKotlin(version = "1.1")
    @h
    public static final KParameter findParameterByName(@g KCallable<?> kCallable, @g String name) {
        Intrinsics.checkNotNullParameter(kCallable, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Iterator<T> it = kCallable.getParameters().iterator();
        Object obj = null;
        boolean z9 = false;
        Object obj2 = null;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (Intrinsics.areEqual(((KParameter) next).getName(), name)) {
                    if (z9) {
                        break;
                    }
                    z9 = true;
                    obj2 = next;
                }
            } else if (z9) {
                obj = obj2;
            }
        }
        return (KParameter) obj;
    }

    @h
    public static final KParameter getExtensionReceiverParameter(@g KCallable<?> kCallable) {
        Intrinsics.checkNotNullParameter(kCallable, "<this>");
        Iterator<T> it = kCallable.getParameters().iterator();
        Object obj = null;
        Object obj2 = null;
        boolean z9 = false;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (((KParameter) next).getKind() == KParameter.Kind.EXTENSION_RECEIVER) {
                    if (z9) {
                        break;
                    }
                    obj2 = next;
                    z9 = true;
                }
            } else if (z9) {
                obj = obj2;
            }
        }
        return (KParameter) obj;
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void getExtensionReceiverParameter$annotations(KCallable kCallable) {
    }

    @h
    public static final KParameter getInstanceParameter(@g KCallable<?> kCallable) {
        Intrinsics.checkNotNullParameter(kCallable, "<this>");
        Iterator<T> it = kCallable.getParameters().iterator();
        Object obj = null;
        Object obj2 = null;
        boolean z9 = false;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                if (((KParameter) next).getKind() == KParameter.Kind.INSTANCE) {
                    if (z9) {
                        break;
                    }
                    obj2 = next;
                    z9 = true;
                }
            } else if (z9) {
                obj = obj2;
            }
        }
        return (KParameter) obj;
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void getInstanceParameter$annotations(KCallable kCallable) {
    }

    @g
    public static final List<KParameter> getValueParameters(@g KCallable<?> kCallable) {
        Intrinsics.checkNotNullParameter(kCallable, "<this>");
        List<KParameter> parameters = kCallable.getParameters();
        ArrayList arrayList = new ArrayList();
        for (Object obj : parameters) {
            if (((KParameter) obj).getKind() == KParameter.Kind.VALUE) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @SinceKotlin(version = "1.1")
    public static /* synthetic */ void getValueParameters$annotations(KCallable kCallable) {
    }
}
