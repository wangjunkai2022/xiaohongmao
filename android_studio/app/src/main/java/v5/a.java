package v5;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty1;
import m8.g;

/* compiled from: KotlinJsonAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u0019\u0012BW\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u001c\u0010\u0017\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u00150\u0014\u0012\u001a\u0010\u001b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00150\u0014\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\"\u0010#J\u0017\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u000e\u001a\u00020\rH\u0016R\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R-\u0010\u0017\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u00150\u00148\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR+\u0010\u001b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00150\u00148\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u0017\u0010\u001e\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lv5/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/squareup/moshi/h;", "Lcom/squareup/moshi/JsonReader;", "reader", "fromJson", "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;", "Lcom/squareup/moshi/q;", "writer", "value", "", "toJson", "(Lcom/squareup/moshi/q;Ljava/lang/Object;)V", "", "toString", "Lkotlin/reflect/KFunction;", "constructor", "Lkotlin/reflect/KFunction;", "b", "()Lkotlin/reflect/KFunction;", "", "Lv5/a$a;", "", "allBindings", "Ljava/util/List;", "a", "()Ljava/util/List;", "nonIgnoredBindings", "c", "Lcom/squareup/moshi/JsonReader$b;", "options", "Lcom/squareup/moshi/JsonReader$b;", "d", "()Lcom/squareup/moshi/JsonReader$b;", "<init>", "(Lkotlin/reflect/KFunction;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$b;)V", "reflect"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class a<T> extends h<T> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final KFunction<T> f94200a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final List<C0847a<T, Object>> f94201b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final List<C0847a<T, Object>> f94202c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final JsonReader.b f94203d;

    /* compiled from: KotlinJsonAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u0000*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u0003BC\u0012\u0006\u0010\u0015\u001a\u00020\u000b\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00020\r\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0019\u001a\u00020\u0013¢\u0006\u0004\b/\u00100J\u0015\u0010\u0005\u001a\u00028\u00022\u0006\u0010\u0004\u001a\u00028\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0004\b\t\u0010\nJ\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00020\rHÆ\u0003J\u0015\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000fHÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0013HÆ\u0003J[\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00020\r2\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u0013HÆ\u0001J\t\u0010\u001b\u001a\u00020\u000bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÖ\u0003R\u0017\u0010\u0015\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u0015\u0010 \u001a\u0004\b!\u0010\"R\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0016\u0010#\u001a\u0004\b$\u0010%R#\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b'\u0010(R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0018\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010\u0019\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0019\u0010,\u001a\u0004\b-\u0010.¨\u00061"}, d2 = {"Lv5/a$a;", "K", "P", "", "value", "h", "(Ljava/lang/Object;)Ljava/lang/Object;", "result", "", "n", "(Ljava/lang/Object;Ljava/lang/Object;)V", "", "a", "Lcom/squareup/moshi/h;", "b", "Lkotlin/reflect/KProperty1;", "c", "Lkotlin/reflect/KParameter;", "d", "", "e", "jsonName", "adapter", "property", "parameter", "propertyIndex", "f", "toString", "hashCode", "other", "", "equals", "Ljava/lang/String;", "j", "()Ljava/lang/String;", "Lcom/squareup/moshi/h;", ContextChain.TAG_INFRA, "()Lcom/squareup/moshi/h;", "Lkotlin/reflect/KProperty1;", "l", "()Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/KParameter;", "k", "()Lkotlin/reflect/KParameter;", "I", "m", "()I", "<init>", "(Ljava/lang/String;Lcom/squareup/moshi/h;Lkotlin/reflect/KProperty1;Lkotlin/reflect/KParameter;I)V", "reflect"}, k = 1, mv = {1, 6, 0})
    /* renamed from: v5.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0847a<K, P> {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final String f94204a;
        @g

        /* renamed from: b  reason: collision with root package name */
        private final h<P> f94205b;
        @g

        /* renamed from: c  reason: collision with root package name */
        private final KProperty1<K, P> f94206c;
        @m8.h

        /* renamed from: d  reason: collision with root package name */
        private final KParameter f94207d;

        /* renamed from: e  reason: collision with root package name */
        private final int f94208e;

        /* JADX WARN: Multi-variable type inference failed */
        public C0847a(@g String jsonName, @g h<P> adapter, @g KProperty1<K, ? extends P> property, @m8.h KParameter kParameter, int i4) {
            Intrinsics.checkNotNullParameter(jsonName, "jsonName");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(property, "property");
            this.f94204a = jsonName;
            this.f94205b = adapter;
            this.f94206c = property;
            this.f94207d = kParameter;
            this.f94208e = i4;
        }

        public static /* synthetic */ C0847a g(C0847a c0847a, String str, h hVar, KProperty1 kProperty1, KParameter kParameter, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = c0847a.f94204a;
            }
            h<P> hVar2 = hVar;
            if ((i10 & 2) != 0) {
                hVar2 = c0847a.f94205b;
            }
            h hVar3 = hVar2;
            KProperty1<K, P> kProperty12 = kProperty1;
            if ((i10 & 4) != 0) {
                kProperty12 = c0847a.f94206c;
            }
            KProperty1 kProperty13 = kProperty12;
            if ((i10 & 8) != 0) {
                kParameter = c0847a.f94207d;
            }
            KParameter kParameter2 = kParameter;
            if ((i10 & 16) != 0) {
                i4 = c0847a.f94208e;
            }
            return c0847a.f(str, hVar3, kProperty13, kParameter2, i4);
        }

        @g
        public final String a() {
            return this.f94204a;
        }

        @g
        public final h<P> b() {
            return this.f94205b;
        }

        @g
        public final KProperty1<K, P> c() {
            return this.f94206c;
        }

        @m8.h
        public final KParameter d() {
            return this.f94207d;
        }

        public final int e() {
            return this.f94208e;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0847a) {
                C0847a c0847a = (C0847a) obj;
                return Intrinsics.areEqual(this.f94204a, c0847a.f94204a) && Intrinsics.areEqual(this.f94205b, c0847a.f94205b) && Intrinsics.areEqual(this.f94206c, c0847a.f94206c) && Intrinsics.areEqual(this.f94207d, c0847a.f94207d) && this.f94208e == c0847a.f94208e;
            }
            return false;
        }

        @g
        public final C0847a<K, P> f(@g String jsonName, @g h<P> adapter, @g KProperty1<K, ? extends P> property, @m8.h KParameter kParameter, int i4) {
            Intrinsics.checkNotNullParameter(jsonName, "jsonName");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(property, "property");
            return new C0847a<>(jsonName, adapter, property, kParameter, i4);
        }

        public final P h(K k10) {
            return this.f94206c.get(k10);
        }

        public int hashCode() {
            int hashCode = ((((this.f94204a.hashCode() * 31) + this.f94205b.hashCode()) * 31) + this.f94206c.hashCode()) * 31;
            KParameter kParameter = this.f94207d;
            return ((hashCode + (kParameter == null ? 0 : kParameter.hashCode())) * 31) + this.f94208e;
        }

        @g
        public final h<P> i() {
            return this.f94205b;
        }

        @g
        public final String j() {
            return this.f94204a;
        }

        @m8.h
        public final KParameter k() {
            return this.f94207d;
        }

        @g
        public final KProperty1<K, P> l() {
            return this.f94206c;
        }

        public final int m() {
            return this.f94208e;
        }

        public final void n(K k10, P p9) {
            Object obj;
            obj = c.f94212b;
            if (p9 != obj) {
                ((KMutableProperty1) this.f94206c).set(k10, p9);
            }
        }

        @g
        public String toString() {
            return "Binding(jsonName=" + this.f94204a + ", adapter=" + this.f94205b + ", property=" + this.f94206c + ", parameter=" + this.f94207d + ", propertyIndex=" + this.f94208e + ')';
        }
    }

    /* compiled from: KotlinJsonAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u0018\u00002\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B%\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f\u0012\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0096\u0002R(\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000b0\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0015"}, d2 = {"Lv5/a$b;", "Lkotlin/collections/AbstractMutableMap;", "Lkotlin/reflect/KParameter;", "", "key", "value", "d", "", "a", "b", "", "", "getEntries", "()Ljava/util/Set;", "entries", "", "parameterKeys", "", "parameterValues", "<init>", "(Ljava/util/List;[Ljava/lang/Object;)V", "reflect"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class b extends AbstractMutableMap<KParameter, Object> {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final List<KParameter> f94209a;
        @g

        /* renamed from: b  reason: collision with root package name */
        private final Object[] f94210b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@g List<? extends KParameter> parameterKeys, @g Object[] parameterValues) {
            Intrinsics.checkNotNullParameter(parameterKeys, "parameterKeys");
            Intrinsics.checkNotNullParameter(parameterValues, "parameterValues");
            this.f94209a = parameterKeys;
            this.f94210b = parameterValues;
        }

        public boolean a(@g KParameter key) {
            Object obj;
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj2 = this.f94210b[key.getIndex()];
            obj = c.f94212b;
            return obj2 != obj;
        }

        @m8.h
        public Object b(@g KParameter key) {
            Object obj;
            Intrinsics.checkNotNullParameter(key, "key");
            Object obj2 = this.f94210b[key.getIndex()];
            obj = c.f94212b;
            if (obj2 != obj) {
                return obj2;
            }
            return null;
        }

        public /* bridge */ Object c(KParameter kParameter, Object obj) {
            return super.getOrDefault(kParameter, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof KParameter) {
                return a((KParameter) obj);
            }
            return false;
        }

        @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
        @m8.h
        /* renamed from: d */
        public Object put(@g KParameter key, @m8.h Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
            return null;
        }

        public /* bridge */ Object e(KParameter kParameter) {
            return super.remove(kParameter);
        }

        public /* bridge */ boolean f(KParameter kParameter, Object obj) {
            return super.remove(kParameter, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object get(Object obj) {
            if (obj instanceof KParameter) {
                return b((KParameter) obj);
            }
            return null;
        }

        @Override // kotlin.collections.AbstractMutableMap
        @g
        public Set<Map.Entry<KParameter, Object>> getEntries() {
            int collectionSizeOrDefault;
            Object obj;
            List<KParameter> list = this.f94209a;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i4 = 0;
            for (T t9 : list) {
                int i10 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                arrayList.add(new AbstractMap.SimpleEntry((KParameter) t9, this.f94210b[i4]));
                i4 = i10;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (T t10 : arrayList) {
                Object value = ((AbstractMap.SimpleEntry) t10).getValue();
                obj = c.f94212b;
                if (value != obj) {
                    linkedHashSet.add(t10);
                }
            }
            return linkedHashSet;
        }

        @Override // java.util.Map
        public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof KParameter) ? obj2 : c((KParameter) obj, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object remove(Object obj) {
            if (obj instanceof KParameter) {
                return e((KParameter) obj);
            }
            return null;
        }

        @Override // java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (obj instanceof KParameter) {
                return f((KParameter) obj, obj2);
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@g KFunction<? extends T> constructor, @g List<C0847a<T, Object>> allBindings, @g List<C0847a<T, Object>> nonIgnoredBindings, @g JsonReader.b options) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(allBindings, "allBindings");
        Intrinsics.checkNotNullParameter(nonIgnoredBindings, "nonIgnoredBindings");
        Intrinsics.checkNotNullParameter(options, "options");
        this.f94200a = constructor;
        this.f94201b = allBindings;
        this.f94202c = nonIgnoredBindings;
        this.f94203d = options;
    }

    @g
    public final List<C0847a<T, Object>> a() {
        return this.f94201b;
    }

    @g
    public final KFunction<T> b() {
        return this.f94200a;
    }

    @g
    public final List<C0847a<T, Object>> c() {
        return this.f94202c;
    }

    @g
    public final JsonReader.b d() {
        return this.f94203d;
    }

    @Override // com.squareup.moshi.h
    public T fromJson(@g JsonReader reader) {
        T callBy;
        Object obj;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(reader, "reader");
        int size = this.f94200a.getParameters().size();
        int size2 = this.f94201b.size();
        Object[] objArr = new Object[size2];
        for (int i4 = 0; i4 < size2; i4++) {
            obj3 = c.f94212b;
            objArr[i4] = obj3;
        }
        reader.b();
        while (reader.k()) {
            int W = reader.W(this.f94203d);
            if (W == -1) {
                reader.h0();
                reader.l0();
            } else {
                C0847a<T, Object> c0847a = this.f94202c.get(W);
                int m9 = c0847a.m();
                Object obj4 = objArr[m9];
                obj2 = c.f94212b;
                if (obj4 == obj2) {
                    objArr[m9] = c0847a.i().fromJson(reader);
                    if (objArr[m9] == null && !c0847a.l().getReturnType().isMarkedNullable()) {
                        JsonDataException B = com.squareup.moshi.internal.c.B(c0847a.l().getName(), c0847a.j(), reader);
                        Intrinsics.checkNotNullExpressionValue(B, "unexpectedNull(\n        …         reader\n        )");
                        throw B;
                    }
                } else {
                    throw new JsonDataException("Multiple values for '" + c0847a.l().getName() + "' at " + ((Object) reader.getPath()));
                }
            }
        }
        reader.h();
        boolean z9 = this.f94201b.size() == size;
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            Object obj5 = objArr[i10];
            obj = c.f94212b;
            if (obj5 == obj) {
                if (this.f94200a.getParameters().get(i10).isOptional()) {
                    i10 = i11;
                    z9 = false;
                } else {
                    if (!this.f94200a.getParameters().get(i10).getType().isMarkedNullable()) {
                        String name = this.f94200a.getParameters().get(i10).getName();
                        C0847a<T, Object> c0847a2 = this.f94201b.get(i10);
                        JsonDataException s9 = com.squareup.moshi.internal.c.s(name, c0847a2 != null ? c0847a2.j() : null, reader);
                        Intrinsics.checkNotNullExpressionValue(s9, "missingProperty(\n       …       reader\n          )");
                        throw s9;
                    }
                    objArr[i10] = null;
                }
            }
            i10 = i11;
        }
        if (z9) {
            callBy = this.f94200a.call(Arrays.copyOf(objArr, size2));
        } else {
            callBy = this.f94200a.callBy(new b(this.f94200a.getParameters(), objArr));
        }
        int size3 = this.f94201b.size();
        while (size < size3) {
            C0847a<T, Object> c0847a3 = this.f94201b.get(size);
            Intrinsics.checkNotNull(c0847a3);
            c0847a3.n(callBy, objArr[size]);
            size++;
        }
        return callBy;
    }

    @Override // com.squareup.moshi.h
    public void toJson(@g q writer, @m8.h T t9) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Objects.requireNonNull(t9, "value == null");
        writer.d();
        for (C0847a<T, Object> c0847a : this.f94201b) {
            if (c0847a != null) {
                writer.A(c0847a.j());
                c0847a.i().toJson(writer, (q) c0847a.h(t9));
            }
        }
        writer.p();
    }

    @g
    public String toString() {
        return "KotlinJsonAdapter(" + this.f94200a.getReturnType() + ')';
    }
}
