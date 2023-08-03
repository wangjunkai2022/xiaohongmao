package x8;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.error.DefinitionOverrideException;
import org.koin.core.instance.d;
import org.koin.core.instance.e;
import org.koin.core.instance.f;
import org.koin.core.registry.c;
import org.koin.core.scope.Scope;

/* compiled from: Module.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0006\u001a\u00020\u00052\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u00002\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0001\u001a[\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\"\u0006\b\u0000\u0010\u0007\u0018\u00012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2)\b\b\u0010\u000f\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00028\u00000\nj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\bH\u0087\bø\u0001\u0000\u001a[\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\u0006\b\u0000\u0010\u0007\u0018\u00012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2)\b\b\u0010\u000f\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00028\u00000\nj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\bH\u0087\bø\u0001\u0000\u001aY\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0006\b\u0000\u0010\u0007\u0018\u00012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2)\b\b\u0010\u000f\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00028\u00000\nj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\u000e2\u0006\u0010\u0010\u001a\u00020\bH\u0087\bø\u0001\u0000\u001a!\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017*\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0018H\u0086\u0002\u001a-\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00180\u001c2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u001cH\u0080\u0010*4\u0010!\u001a\u0004\b\u0000\u0010\u001f\"\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000 2\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000 \u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"Lorg/koin/core/instance/d;", "factory", "", "Lorg/koin/core/definition/IndexKey;", "mapping", "", ContextChain.TAG_INFRA, ExifInterface.GPS_DIRECTION_TRUE, "Lz8/a;", "qualifier", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "definition", "scopeQualifier", "Lorg/koin/core/instance/f;", "e", "Lorg/koin/core/instance/a;", "a", "Lorg/koin/core/instance/e;", "c", "", "Lx8/a;", "module", "j", h4.b.f83291i, "", "newModules", "g", "R", "Lkotlin/Pair;", "KoinDefinition", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @u8.b
    public static final /* synthetic */ <T> org.koin.core.instance.a<T> a(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition, z8.a scopeQualifier) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new org.koin.core.instance.a<>(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
    }

    public static /* synthetic */ org.koin.core.instance.a b(z8.a aVar, Function2 definition, z8.a aVar2, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        z8.a aVar3 = aVar;
        if ((i4 & 4) != 0) {
            aVar2 = c.f92526e.a();
        }
        z8.a scopeQualifier = aVar2;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new org.koin.core.instance.a(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar3, definition, kind, emptyList));
    }

    @u8.b
    public static final /* synthetic */ <T> e<T> c(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition, z8.a scopeQualifier) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new e<>(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
    }

    public static /* synthetic */ e d(z8.a aVar, Function2 definition, z8.a scopeQualifier, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new e(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
    }

    @u8.b
    public static final /* synthetic */ <T> f<T> e(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition, z8.a scopeQualifier) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new f<>(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
    }

    public static /* synthetic */ f f(z8.a aVar, Function2 definition, z8.a aVar2, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        z8.a aVar3 = aVar;
        if ((i4 & 4) != 0) {
            aVar2 = c.f92526e.a();
        }
        z8.a scopeQualifier = aVar2;
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new f(new org.koin.core.definition.a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar3, definition, kind, emptyList));
    }

    @g
    public static final Set<a> g(@g List<a> modules, @g Set<a> newModules) {
        Object first;
        Intrinsics.checkNotNullParameter(modules, "modules");
        Intrinsics.checkNotNullParameter(newModules, "newModules");
        while (!modules.isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) modules);
            a aVar = (a) first;
            if (aVar != null) {
                modules = modules.subList(1, modules.size());
                if (aVar.g().isEmpty()) {
                    newModules = SetsKt___SetsKt.plus(newModules, aVar);
                } else {
                    modules = CollectionsKt___CollectionsKt.plus((Collection) aVar.g(), (Iterable) modules);
                    newModules = SetsKt___SetsKt.plus(newModules, aVar);
                }
            } else {
                throw new IllegalStateException("Flatten - No head element in list".toString());
            }
        }
        return newModules;
    }

    public static /* synthetic */ Set h(List list, Set set, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            set = SetsKt__SetsKt.emptySet();
        }
        return g(list, set);
    }

    @PublishedApi
    public static final void i(@g d<?> factory, @g String mapping) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        throw new DefinitionOverrideException("Already existing definition for " + factory.f() + " at " + mapping);
    }

    @g
    public static final List<a> j(@g List<a> list, @g a module) {
        List listOf;
        List<a> plus;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(module, "module");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(module);
        plus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) listOf);
        return plus;
    }
}
