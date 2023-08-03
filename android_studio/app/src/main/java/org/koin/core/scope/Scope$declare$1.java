package org.koin.core.scope;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.instance.e;
import org.koin.core.registry.InstanceRegistry;

/* compiled from: Scope.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke"}, k = 3, mv = {1, 6, 0}, xi = 176)
/* loaded from: classes5.dex */
public final class Scope$declare$1 extends Lambda implements Function0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Scope f92550a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ T f92551b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ z8.a f92552c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ List<KClass<?>> f92553d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f92554e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Scope$declare$1(Scope scope, T t9, z8.a aVar, List<? extends KClass<?>> list, boolean z9) {
        super(0);
        this.f92550a = scope;
        this.f92551b = t9;
        this.f92552c = aVar;
        this.f92553d = list;
        this.f92554e = z9;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        InstanceRegistry s9 = this.f92550a.K().s();
        Object obj = this.f92551b;
        z8.a aVar = this.f92552c;
        List<KClass<?>> list = this.f92553d;
        boolean z9 = this.f92554e;
        z8.a I = this.f92550a.I();
        String x9 = this.f92550a.x();
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        Scope$declare$1$invoke$$inlined$declareScopedInstance$1 scope$declare$1$invoke$$inlined$declareScopedInstance$1 = new Scope$declare$1$invoke$$inlined$declareScopedInstance$1(obj);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar2 = new org.koin.core.definition.a(I, Reflection.getOrCreateKotlinClass(Object.class), aVar, scope$declare$1$invoke$$inlined$declareScopedInstance$1, kind, list);
        String c10 = org.koin.core.definition.b.c(aVar2.l(), aVar2.m(), aVar2.n());
        d<?> dVar = s9.j().get(c10);
        e eVar = dVar instanceof e ? (e) dVar : null;
        if (eVar != null) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Any");
            eVar.j(x9, obj);
            return;
        }
        e eVar2 = new e(aVar2);
        InstanceRegistry.q(s9, z9, c10, eVar2, false, 8, null);
        Iterator<T> it = aVar2.o().iterator();
        while (it.hasNext()) {
            InstanceRegistry.q(s9, z9, org.koin.core.definition.b.c((KClass) it.next(), aVar2.m(), aVar2.n()), eVar2, false, 8, null);
        }
    }
}
