package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.UtilKt;
import m8.g;
import m8.h;

/* compiled from: InlineClassAwareCaller.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0000\u0018\u0000*\f\b\u0000\u0010\u0001 \u0001*\u0004\u0018\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001cB#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0016¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller;", "M", "Ljava/lang/reflect/Member;", "Lkotlin/reflect/jvm/internal/calls/Caller;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "caller", "isDefault", "", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/Caller;Z)V", "data", "Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "member", "getMember", "()Ljava/lang/reflect/Member;", "parameterTypes", "", "Ljava/lang/reflect/Type;", "getParameterTypes", "()Ljava/util/List;", "returnType", "getReturnType", "()Ljava/lang/reflect/Type;", "call", "", "args", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "BoxUnboxData", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InlineClassAwareCaller<M extends Member> implements Caller<M> {
    @g
    private final Caller<M> caller;
    @g
    private final BoxUnboxData data;
    private final boolean isDefault;

    /* compiled from: InlineClassAwareCaller.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003H\u0086\u0002J\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0086\u0002¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCaller$BoxUnboxData;", "", "argumentRange", "Lkotlin/ranges/IntRange;", "unbox", "", "Ljava/lang/reflect/Method;", "box", "(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "getArgumentRange", "()Lkotlin/ranges/IntRange;", "getBox", "()Ljava/lang/reflect/Method;", "getUnbox", "()[Ljava/lang/reflect/Method;", "[Ljava/lang/reflect/Method;", "component1", "component2", "component3", "kotlin-reflection"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    private static final class BoxUnboxData {
        @g
        private final IntRange argumentRange;
        @h
        private final Method box;
        @g
        private final Method[] unbox;

        public BoxUnboxData(@g IntRange argumentRange, @g Method[] unbox, @h Method method) {
            Intrinsics.checkNotNullParameter(argumentRange, "argumentRange");
            Intrinsics.checkNotNullParameter(unbox, "unbox");
            this.argumentRange = argumentRange;
            this.unbox = unbox;
            this.box = method;
        }

        @g
        public final IntRange component1() {
            return this.argumentRange;
        }

        @g
        public final Method[] component2() {
            return this.unbox;
        }

        @h
        public final Method component3() {
            return this.box;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if ((r12 instanceof kotlin.reflect.jvm.internal.calls.BoundCaller) != false) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public InlineClassAwareCaller(@m8.g kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r11, @m8.g kotlin.reflect.jvm.internal.calls.Caller<? extends M> r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.InlineClassAwareCaller.<init>(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.calls.Caller, boolean):void");
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    @h
    public Object call(@g Object[] args) {
        Object invoke;
        Intrinsics.checkNotNullParameter(args, "args");
        BoxUnboxData boxUnboxData = this.data;
        IntRange component1 = boxUnboxData.component1();
        Method[] component2 = boxUnboxData.component2();
        Method component3 = boxUnboxData.component3();
        Object[] copyOf = Arrays.copyOf(args, args.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        Intrinsics.checkNotNull(copyOf, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int first = component1.getFirst();
        int last = component1.getLast();
        if (first <= last) {
            while (true) {
                Method method = component2[first];
                Object obj = args[first];
                if (method != null) {
                    if (obj != null) {
                        obj = method.invoke(obj, new Object[0]);
                    } else {
                        Class<?> returnType = method.getReturnType();
                        Intrinsics.checkNotNullExpressionValue(returnType, "method.returnType");
                        obj = UtilKt.defaultPrimitiveValue(returnType);
                    }
                }
                copyOf[first] = obj;
                if (first == last) {
                    break;
                }
                first++;
            }
        }
        Object call = this.caller.call(copyOf);
        return (component3 == null || (invoke = component3.invoke(null, call)) == null) ? call : invoke;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public M getMember() {
        return this.caller.getMember();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    @g
    public List<Type> getParameterTypes() {
        return this.caller.getParameterTypes();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    @g
    public Type getReturnType() {
        return this.caller.getReturnType();
    }
}
